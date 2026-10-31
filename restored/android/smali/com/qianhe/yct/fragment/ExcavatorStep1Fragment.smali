.class public Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;
.super Lcom/qianhe/yct/base/BaseProjectFragment;
.source "ExcavatorStep1Fragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$FocusedType;
    }
.end annotation


# instance fields
.field private binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep1Binding;

.field private checkInsDialog:Lcom/qianhe/yct/dialog/CheckInsDialogFragment;

.field private checkInsDismissedManually:Z

.field private checkInsFromContinue:Z

.field private excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

.field private hasShownInstallTips:Z

.field private initEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

.field private insAvailable:Z

.field private isNoMoreReminders:Z

.field private lastFocusedType:Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$FocusedType;

.field private mINS:Lcom/qianhe/baselib/bean/InsNavi;


# direct methods
.method static bridge synthetic -$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;)Lcom/qianhe/yct/databinding/FragmentExcavatorStep1Binding;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep1Binding;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetexcavatorEntity(Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;)Lcom/qianhe/baselib/bean/ExcavatorEntity;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisNoMoreReminders(Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->isNoMoreReminders:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputcheckInsDialog(Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;Lcom/qianhe/yct/dialog/CheckInsDialogFragment;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->checkInsDialog:Lcom/qianhe/yct/dialog/CheckInsDialogFragment;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputcheckInsDismissedManually(Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->checkInsDismissedManually:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisNoMoreReminders(Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->isNoMoreReminders:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputlastFocusedType(Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$FocusedType;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->lastFocusedType:Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$FocusedType;

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckAndShowInstallTips(Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->checkAndShowInstallTips()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshouldBlockForCheckIns(Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->shouldBlockForCheckIns()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mshowActualImageDialog(Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->showActualImageDialog()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowCheckInsDialog(Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->showCheckInsDialog(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowInstallTipsDialog(Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->showInstallTipsDialog(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateTvDoubtVisibility(Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->updateTvDoubtVisibility(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 40
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->isNoMoreReminders:Z

    .line 50
    sget-object v1, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$FocusedType;->HA:Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$FocusedType;

    iput-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->lastFocusedType:Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$FocusedType;

    .line 51
    iput-boolean v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->hasShownInstallTips:Z

    .line 52
    iput-boolean v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->insAvailable:Z

    .line 54
    iput-boolean v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->checkInsDismissedManually:Z

    .line 56
    iput-boolean v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->checkInsFromContinue:Z

    return-void
.end method

.method static synthetic access$000(Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;)Landroid/content/SharedPreferences;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/qianhe/yct/base/BaseProjectFragment;->mSp:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method static synthetic access$100(Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;)Landroid/content/SharedPreferences;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/qianhe/yct/base/BaseProjectFragment;->mSp:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;ID)D
    .locals 0

    .line 40
    invoke-virtual {p0, p1, p2, p3}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatOtherToMeter(ID)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$1100(Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;Landroid/view/View;)V
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/base/BaseProjectFragment;->postWizardNext(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;Landroid/widget/ImageView;I)V
    .locals 0

    .line 40
    invoke-virtual {p0, p1, p2}, Lcom/qianhe/yct/base/BaseProjectFragment;->setGifResource(Landroid/widget/ImageView;I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;Landroid/widget/ImageView;I)V
    .locals 0

    .line 40
    invoke-virtual {p0, p1, p2}, Lcom/qianhe/yct/base/BaseProjectFragment;->setGifResource(Landroid/widget/ImageView;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;)I
    .locals 0

    .line 40
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;ID)D
    .locals 0

    .line 40
    invoke-virtual {p0, p1, p2, p3}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatOtherToMeter(ID)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$400(Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;)I
    .locals 0

    .line 40
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;ID)D
    .locals 0

    .line 40
    invoke-virtual {p0, p1, p2, p3}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatOtherToMeter(ID)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$600(Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;Landroid/view/View;)V
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/base/BaseProjectFragment;->postWizardNext(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$700(Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;)I
    .locals 0

    .line 40
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;ID)D
    .locals 0

    .line 40
    invoke-virtual {p0, p1, p2, p3}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatOtherToMeter(ID)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$900(Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;)I
    .locals 0

    .line 40
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result p0

    return p0
.end method

.method private applyScrollViewHeightLimit(Landroidx/core/widget/NestedScrollView;II)V
    .locals 3

    const/4 v0, 0x0

    .line 173
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 177
    :cond_0
    invoke-static {p3, v0}, Ljava/lang/Math;->max(II)I

    move-result p3

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {p3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    .line 178
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 179
    invoke-virtual {v1, p3, v0}, Landroid/view/View;->measure(II)V

    .line 180
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    .line 181
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 182
    invoke-virtual {p1, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private checkAndShowInstallTips()V
    .locals 3

    .line 80
    iget-boolean v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->hasShownInstallTips:Z

    if-eqz v0, :cond_0

    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseProjectFragment;->mSp:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "show_install_leveling_tips"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget v0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->mode:I

    sget-object v1, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->NO_SENSOR_FLAT:Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;

    invoke-virtual {v1}, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->getMode()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 83
    iput-boolean v2, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->hasShownInstallTips:Z

    .line 84
    invoke-direct {p0, v2}, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->showInstallTipsDialog(Z)V

    return-void

    .line 86
    :cond_1
    iput-boolean v2, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->hasShownInstallTips:Z

    return-void
.end method

.method private getActualGifResId()I
    .locals 3

    .line 394
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isKe76Pro()Z

    move-result v0

    .line 395
    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->lastFocusedType:Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$FocusedType;

    sget-object v2, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$FocusedType;->PQ:Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$FocusedType;

    if-ne v1, v2, :cond_1

    if-eqz v0, :cond_0

    .line 396
    sget v0, Lcom/qianhe/yct/R$drawable;->icon_pq_ex30_actual:I

    return v0

    :cond_0
    sget v0, Lcom/qianhe/yct/R$drawable;->icon_pq_actual:I

    return v0

    :cond_1
    if-eqz v0, :cond_2

    .line 398
    sget v0, Lcom/qianhe/yct/R$drawable;->icon_ha_ex30_actual:I

    return v0

    :cond_2
    sget v0, Lcom/qianhe/yct/R$drawable;->icon_ha_actual:I

    return v0
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

    .line 169
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method private initGifShow()V
    .locals 13

    .line 274
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep1Binding;

    iget-object v2, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep1Binding;->edtHA:Lcom/qianhe/yct/view/NumericEditText;

    sget-object v3, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$FocusedType;->HA:Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$FocusedType;

    sget v4, Lcom/qianhe/yct/R$drawable;->icon_ha_sensor:I

    sget v5, Lcom/qianhe/yct/R$drawable;->icon_ha_no_sensor:I

    new-instance v6, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$7;

    invoke-direct {v6, p0}, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$7;-><init>(Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;)V

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->setupParamField(Landroid/view/View;Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$FocusedType;IILjava/lang/Runnable;)V

    .line 282
    iget-object v0, v1, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep1Binding;

    iget-object v8, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep1Binding;->edtPq:Lcom/qianhe/yct/view/NumericEditText;

    sget-object v9, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$FocusedType;->PQ:Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$FocusedType;

    sget v10, Lcom/qianhe/yct/R$drawable;->icon_pq_sensor:I

    sget v11, Lcom/qianhe/yct/R$drawable;->icon_pq_no_sensor:I

    new-instance v12, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$8;

    invoke-direct {v12, p0}, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$8;-><init>(Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;)V

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->setupParamField(Landroid/view/View;Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$FocusedType;IILjava/lang/Runnable;)V

    .line 288
    iget-object v0, v1, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep1Binding;->edtValue:Lcom/qianhe/yct/view/NumericEditText;

    new-instance v2, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$9;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$9;-><init>(Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method private initView()V
    .locals 2

    .line 216
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep1Binding;->tvInstallDoubt:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v1, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$3;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$3;-><init>(Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep1Binding;->tvDoubt:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v1, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$4;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$4;-><init>(Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep1Binding;->tvPrevious:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$5;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$5;-><init>(Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep1Binding;->tvContinue:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$6;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$6;-><init>(Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/qianhe/yct/base/BaseProjectFragment;->bindContinueClick(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 269
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->initGifShow()V

    .line 270
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->showData()V

    return-void
.end method

.method private isSwingInsExempt()Z
    .locals 3

    .line 440
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 441
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;

    .line 442
    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-virtual {v0}, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->isSwingInsClearedOnce()Z

    move-result v2

    invoke-virtual {v0}, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->shouldIgnoreBucketSensorLost()Z

    move-result v0

    invoke-static {v1, v2, v0}, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->isSwingInsExempt(Lcom/qianhe/baselib/bean/InsNavi;ZZ)Z

    move-result v0

    return v0
.end method

.method private setupParamField(Landroid/view/View;Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$FocusedType;IILjava/lang/Runnable;)V
    .locals 7

    .line 334
    new-instance v0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$10;

    invoke-direct {v0, p0, p2}, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$10;-><init>(Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$FocusedType;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 341
    new-instance v1, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$11;

    move-object v2, p0

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$11;-><init>(Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$FocusedType;IILjava/lang/Runnable;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method private shouldBlockForCheckIns()Z
    .locals 1

    .line 435
    iget-boolean v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->insAvailable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 436
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->isSwingInsExempt()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private showActualImageDialog()V
    .locals 9

    .line 361
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 362
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/qianhe/yct/R$layout;->dialog_actual_image:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 363
    sget v2, Lcom/qianhe/yct/R$drawable;->bg_dialog:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 364
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    const/4 v2, 0x1

    .line 365
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 366
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 368
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 370
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    .line 371
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 372
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    int-to-float v6, v6

    if-eqz v2, :cond_1

    const v2, 0x3f19999a    # 0.6f

    goto :goto_1

    :cond_1
    const v2, 0x3f666666    # 0.9f

    :goto_1
    mul-float v6, v6, v2

    float-to-int v2, v6

    .line 373
    iput v2, v5, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v2, -0x2

    .line 374
    iput v2, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 375
    invoke-virtual {v3, v5}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const v2, 0x106000d

    .line 376
    invoke-virtual {v3, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 378
    :cond_2
    sget v2, Lcom/qianhe/yct/R$id;->gifIv:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lpl/droidsonroids/gif/GifImageView;

    .line 379
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 380
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->getActualGifResId()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/qianhe/yct/base/BaseProjectFragment;->setGifResource(Landroid/widget/ImageView;I)V

    .line 381
    sget v2, Lcom/qianhe/yct/R$id;->tvCancel:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 382
    sget v2, Lcom/qianhe/yct/R$id;->tvSure:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 383
    sget v2, Lcom/qianhe/yct/R$string;->close:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 384
    new-instance v2, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$12;

    invoke-direct {v2, p0, v0}, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$12;-><init>(Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 390
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showCheckInsDialog(Z)V
    .locals 3

    .line 413
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "CheckInsDialog"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 414
    :cond_0
    iput-boolean p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->checkInsFromContinue:Z

    .line 415
    new-instance v0, Lcom/qianhe/yct/dialog/CheckInsDialogFragment;

    invoke-direct {v0}, Lcom/qianhe/yct/dialog/CheckInsDialogFragment;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->checkInsDialog:Lcom/qianhe/yct/dialog/CheckInsDialogFragment;

    .line 416
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;

    if-eqz v0, :cond_1

    .line 417
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->checkInsDialog:Lcom/qianhe/yct/dialog/CheckInsDialogFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;

    invoke-virtual {v2}, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->isSwingInsClearedOnce()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/qianhe/yct/dialog/CheckInsDialogFragment;->setIgnoreTiltReject(Z)V

    .line 419
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->checkInsDialog:Lcom/qianhe/yct/dialog/CheckInsDialogFragment;

    new-instance v2, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$13;

    invoke-direct {v2, p0, p1}, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$13;-><init>(Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;Z)V

    invoke-virtual {v0, v2}, Lcom/qianhe/yct/dialog/CheckInsDialogFragment;->setOnActionListener(Lcom/qianhe/yct/dialog/CheckInsDialogFragment$OnActionListener;)V

    .line 430
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->checkInsDialog:Lcom/qianhe/yct/dialog/CheckInsDialogFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private showData()V
    .locals 7

    .line 402
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep1Binding;->unitDropdownSensor:Lcom/qianhe/yct/view/UnitDropdownView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/qianhe/yct/view/UnitDropdownView;->initUnit(Landroid/content/Context;I)V

    .line 403
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep1Binding;->tvUnitValue:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/qianhe/yct/base/BaseProjectFragment;->refreshMode1UnitLabel(Landroid/widget/TextView;)V

    .line 404
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->deviceHeight:D

    const/4 v2, 0x3

    const-wide/16 v3, 0x0

    cmpl-double v5, v0, v3

    if-eqz v5, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep1Binding;->edtValue:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v1

    iget-object v5, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-wide v5, v5, Lcom/qianhe/baselib/bean/ExcavatorEntity;->deviceHeight:D

    invoke-virtual {p0, v1, v5, v6, v2}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatMetertoOther(IDI)D

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatDouble(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->HA:D

    cmpl-double v5, v0, v3

    if-eqz v5, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep1Binding;->edtHA:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v1

    iget-object v5, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-wide v5, v5, Lcom/qianhe/baselib/bean/ExcavatorEntity;->HA:D

    invoke-virtual {p0, v1, v5, v6, v2}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatMetertoOther(IDI)D

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatDouble(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 406
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->pq:D

    cmpl-double v5, v0, v3

    if-eqz v5, :cond_2

    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep1Binding;->edtPq:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v1

    iget-object v3, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-wide v3, v3, Lcom/qianhe/baselib/bean/ExcavatorEntity;->pq:D

    invoke-virtual {p0, v1, v3, v4, v2}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatMetertoOther(IDI)D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatDouble(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method private showInstallTipsDialog(Z)V
    .locals 18

    move-object/from16 v0, p0

    .line 94
    new-instance v2, Landroid/app/Dialog;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 95
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lcom/qianhe/yct/R$layout;->dialog_install_tips:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 96
    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    const/4 v4, 0x0

    .line 97
    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 98
    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 100
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 101
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 102
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->density:F

    .line 103
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

    .line 104
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

    .line 107
    :goto_2
    sget v11, Lcom/qianhe/yct/R$id;->tvTitle:I

    invoke-virtual {v3, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 108
    sget v12, Lcom/qianhe/yct/R$id;->ivInstallImage:I

    invoke-virtual {v3, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroidx/appcompat/widget/AppCompatImageView;

    .line 109
    sget v13, Lcom/qianhe/yct/R$id;->tvContent:I

    invoke-virtual {v3, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 110
    sget v14, Lcom/qianhe/yct/R$id;->nsvContent:I

    invoke-virtual {v3, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroidx/core/widget/NestedScrollView;

    .line 111
    sget v15, Lcom/qianhe/yct/R$id;->lltNoMore:I

    invoke-virtual {v3, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout;

    .line 112
    sget v4, Lcom/qianhe/yct/R$id;->ivNoMore:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    move/from16 v16, v9

    .line 113
    sget v9, Lcom/qianhe/yct/R$id;->tvPrevious:I

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 114
    sget v1, Lcom/qianhe/yct/R$id;->tvNext:I

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v3, 0x0

    .line 116
    iput-boolean v3, v0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->isNoMoreReminders:Z

    .line 117
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    const/16 v3, 0x8

    move-object/from16 v17, v2

    if-eqz p1, :cond_3

    const/4 v2, 0x0

    goto :goto_3

    :cond_3
    const/16 v2, 0x8

    .line 118
    :goto_3
    invoke-virtual {v15, v2}, Landroid/view/View;->setVisibility(I)V

    .line 119
    invoke-virtual {v9, v3}, Landroid/view/View;->setVisibility(I)V

    .line 120
    sget v2, Lcom/qianhe/yct/R$string;->confirm:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 122
    sget v2, Lcom/qianhe/yct/R$string;->install_leveling_device:I

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setText(I)V

    .line 123
    sget v2, Lcom/qianhe/yct/R$string;->install_leveling_device_step:I

    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setText(I)V

    .line 125
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isKe76Pro()Z

    move-result v2

    const/4 v3, 0x0

    .line 126
    invoke-virtual {v12, v3}, Landroid/view/View;->setVisibility(I)V

    if-eqz v2, :cond_4

    .line 127
    sget v2, Lcom/qianhe/yct/R$drawable;->icon_install_zpy_xfix:I

    goto :goto_4

    :cond_4
    sget v2, Lcom/qianhe/yct/R$drawable;->icon_install_zpy_yct:I

    :goto_4
    invoke-virtual {v12, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 129
    invoke-direct {v0, v6, v7, v8, v10}, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->getInstallTipsMaxScrollHeight(IFZZ)I

    move-result v2

    int-to-float v3, v5

    mul-float v3, v3, v16

    float-to-int v3, v3

    const/high16 v5, 0x42200000    # 40.0f

    mul-float v7, v7, v5

    float-to-int v5, v7

    sub-int v5, v3, v5

    .line 132
    invoke-direct {v0, v14, v2, v5}, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->applyScrollViewHeightLimit(Landroidx/core/widget/NestedScrollView;II)V

    .line 134
    invoke-virtual/range {v17 .. v17}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 136
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    .line 137
    iput v3, v5, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v3, -0x2

    .line 138
    iput v3, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v3, 0x11

    .line 139
    iput v3, v5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 140
    invoke-virtual {v2, v5}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const v3, 0x106000d

    .line 141
    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 144
    :cond_5
    new-instance v2, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$1;

    invoke-direct {v2, v0, v4}, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$1;-><init>(Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;Landroid/widget/ImageView;)V

    invoke-virtual {v15, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    new-instance v2, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$2;

    move/from16 v3, p1

    move-object/from16 v4, v17

    invoke-direct {v2, v0, v3, v4}, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment$2;-><init>(Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;ZLandroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private updateCloseUpPosition()V
    .locals 7

    .line 300
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep1Binding;->ivStep1CloseUp:Landroidx/appcompat/widget/AppCompatImageView;

    .line 301
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 302
    instance-of v2, v1, Landroid/widget/RelativeLayout$LayoutParams;

    if-nez v2, :cond_0

    return-void

    .line 305
    :cond_0
    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 306
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x41700000    # 15.0f

    mul-float v2, v2, v3

    float-to-int v2, v2

    .line 307
    iget-object v3, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget v3, v3, Lcom/qianhe/baselib/bean/ExcavatorEntity;->mode:I

    sget-object v4, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->NO_SENSOR_FLAT:Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;

    invoke-virtual {v4}, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->getMode()I

    move-result v4

    const/4 v5, 0x0

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0xf

    .line 308
    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v4, 0x15

    const/16 v6, 0x8

    if-eqz v3, :cond_2

    .line 310
    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 311
    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 312
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 313
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 314
    iput v5, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_1

    .line 316
    :cond_2
    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 317
    sget v3, Lcom/qianhe/yct/R$id;->ivStep1:I

    invoke-virtual {v1, v6, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 318
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 319
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 320
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 322
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateTvDoubtVisibility(Z)V
    .locals 3

    .line 326
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget v0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->mode:I

    sget-object v1, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->NO_SENSOR_FLAT:Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;

    invoke-virtual {v1}, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->getMode()I

    move-result v1

    const/16 v2, 0x8

    if-ne v0, v1, :cond_0

    .line 327
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep1Binding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentExcavatorStep1Binding;->tvDoubt:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep1Binding;->tvDoubt:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz p1, :cond_1

    const/4 v2, 0x0

    :cond_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public gga(Lcom/qianhe/baselib/bean/GGAEntity;)V
    .locals 0

    .line 0
    return-void
.end method

.method public insNavi(Lcom/qianhe/baselib/bean/InsNavi;Z)V
    .locals 1

    if-nez p1, :cond_0

    goto :goto_0

    .line 460
    :cond_0
    iput-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    .line 461
    iput-boolean p2, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->insAvailable:Z

    .line 462
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    .line 465
    iput-boolean v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->checkInsDismissedManually:Z

    .line 466
    iget-object p2, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->checkInsDialog:Lcom/qianhe/yct/dialog/CheckInsDialogFragment;

    if-eqz p2, :cond_2

    .line 467
    invoke-virtual {p2}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 468
    iput-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->checkInsDialog:Lcom/qianhe/yct/dialog/CheckInsDialogFragment;

    .line 469
    iget-boolean p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->checkInsFromContinue:Z

    if-nez p1, :cond_6

    .line 470
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->checkAndShowInstallTips()V

    return-void

    .line 472
    :cond_2
    iget-boolean p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->hasShownInstallTips:Z

    if-nez p1, :cond_6

    .line 473
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->checkAndShowInstallTips()V

    return-void

    .line 479
    :cond_3
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->isSwingInsExempt()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 480
    iget-object p2, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->checkInsDialog:Lcom/qianhe/yct/dialog/CheckInsDialogFragment;

    if-eqz p2, :cond_6

    .line 481
    invoke-virtual {p2}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 482
    iput-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->checkInsDialog:Lcom/qianhe/yct/dialog/CheckInsDialogFragment;

    return-void

    .line 486
    :cond_4
    iget-boolean p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->checkInsDismissedManually:Z

    if-eqz p1, :cond_5

    goto :goto_0

    .line 487
    :cond_5
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->checkInsDialog:Lcom/qianhe/yct/dialog/CheckInsDialogFragment;

    if-eqz p1, :cond_7

    :cond_6
    :goto_0
    return-void

    .line 488
    :cond_7
    invoke-direct {p0, v0}, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->showCheckInsDialog(Z)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 61
    const-string p1, ","

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-static {p2}, Lcom/qianhe/yct/databinding/FragmentExcavatorStep1Binding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/FragmentExcavatorStep1Binding;

    move-result-object p2

    iput-object p2, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep1Binding;

    .line 62
    iget-object p2, p0, Lcom/qianhe/yct/base/BaseProjectFragment;->mSp:Landroid/content/SharedPreferences;

    const-string p3, "current_coords"

    const-string v0, ""

    invoke-interface {p2, p3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 63
    iget-object p3, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    if-nez p3, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 64
    new-instance p3, Lcom/qianhe/baselib/bean/InsNavi;

    invoke-direct {p3}, Lcom/qianhe/baselib/bean/InsNavi;-><init>()V

    iput-object p3, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    .line 66
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p3, Lcom/qianhe/baselib/bean/InsNavi;->longitude:D

    .line 67
    iget-object p3, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p3, Lcom/qianhe/baselib/bean/InsNavi;->latitude:D

    .line 68
    iget-object p3, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

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

    .line 70
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 73
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->resolveInitExcavatorEntity()Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->initEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    .line 74
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->resolveExcavatorEntity()Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    .line 75
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->initView()V

    .line 76
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep1Binding;

    invoke-virtual {p1}, Lcom/qianhe/yct/databinding/FragmentExcavatorStep1Binding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 493
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep1Binding;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep1Binding;->ivStep1:Lpl/droidsonroids/gif/GifImageView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/qianhe/yct/base/BaseProjectFragment;->recycleGif(Landroid/widget/ImageView;)V

    .line 494
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->onDestroyView()V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 211
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep1Binding;->ivStep1:Lpl/droidsonroids/gif/GifImageView;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/qianhe/yct/base/BaseProjectFragment;->setGifPlaying(Landroid/widget/ImageView;Z)V

    .line 212
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 7

    .line 187
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 188
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep1Binding;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep1Binding;->tvContinue:Landroid/widget/TextView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/qianhe/yct/base/BaseProjectFragment;->restoreContinueEnabled(Landroid/view/View;)V

    .line 189
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep1Binding;->tvInstallDoubt:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget v1, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->mode:I

    sget-object v2, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->NO_SENSOR_FLAT:Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;

    invoke-virtual {v2}, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->getMode()I

    move-result v3

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-eq v1, v3, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1

    .line 190
    invoke-direct {p0, v0}, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->updateTvDoubtVisibility(Z)V

    .line 191
    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep1Binding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentExcavatorStep1Binding;->unitDropdownSensor:Lcom/qianhe/yct/view/UnitDropdownView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v6

    invoke-virtual {v1, v3, v6}, Lcom/qianhe/yct/view/UnitDropdownView;->initUnit(Landroid/content/Context;I)V

    .line 192
    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep1Binding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentExcavatorStep1Binding;->tvUnitValue:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/qianhe/yct/base/BaseProjectFragment;->refreshMode1UnitLabel(Landroid/widget/TextView;)V

    .line 193
    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget v1, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->mode:I

    sget-object v3, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->SENSOR:Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;

    invoke-virtual {v3}, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->getMode()I

    move-result v3

    if-ne v1, v3, :cond_2

    .line 194
    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep1Binding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentExcavatorStep1Binding;->ivStep1:Lpl/droidsonroids/gif/GifImageView;

    sget v3, Lcom/qianhe/yct/R$drawable;->icon_ha_sensor:I

    invoke-virtual {p0, v1, v3}, Lcom/qianhe/yct/base/BaseProjectFragment;->setGifResource(Landroid/widget/ImageView;I)V

    goto :goto_2

    .line 195
    :cond_2
    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget v1, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->mode:I

    invoke-virtual {v2}, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->getMode()I

    move-result v3

    if-ne v1, v3, :cond_3

    .line 196
    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep1Binding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentExcavatorStep1Binding;->ivStep1:Lpl/droidsonroids/gif/GifImageView;

    sget v3, Lcom/qianhe/yct/R$drawable;->icon_excavator_ah:I

    invoke-virtual {p0, v1, v3}, Lcom/qianhe/yct/base/BaseProjectFragment;->setGifResource(Landroid/widget/ImageView;I)V

    goto :goto_2

    .line 197
    :cond_3
    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget v1, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->mode:I

    sget-object v3, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->NO_SENSOR_NOT_FLAT:Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;

    invoke-virtual {v3}, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->getMode()I

    move-result v3

    if-ne v1, v3, :cond_4

    .line 198
    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep1Binding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentExcavatorStep1Binding;->ivStep1:Lpl/droidsonroids/gif/GifImageView;

    sget v3, Lcom/qianhe/yct/R$drawable;->icon_ha_no_sensor:I

    invoke-virtual {p0, v1, v3}, Lcom/qianhe/yct/base/BaseProjectFragment;->setGifResource(Landroid/widget/ImageView;I)V

    .line 200
    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep1Binding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentExcavatorStep1Binding;->ivStep1CloseUp:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 201
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isKe76Pro()Z

    move-result v1

    .line 202
    iget-object v3, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep1Binding;

    iget-object v3, v3, Lcom/qianhe/yct/databinding/FragmentExcavatorStep1Binding;->ivStep1CloseUp:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v1, :cond_5

    sget v1, Lcom/qianhe/yct/R$drawable;->icon_ex30_close_up:I

    goto :goto_3

    :cond_5
    sget v1, Lcom/qianhe/yct/R$drawable;->icon_h5pro_close_up:I

    :goto_3
    invoke-virtual {v3, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 203
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->updateCloseUpPosition()V

    .line 204
    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep1Binding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentExcavatorStep1Binding;->lltMode23:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget v3, v3, Lcom/qianhe/baselib/bean/ExcavatorEntity;->mode:I

    invoke-virtual {v2}, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->getMode()I

    move-result v2

    if-ne v3, v2, :cond_6

    const/16 v2, 0x8

    goto :goto_4

    :cond_6
    const/4 v2, 0x0

    :goto_4
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 205
    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep1Binding;

    iget-object v2, v1, Lcom/qianhe/yct/databinding/FragmentExcavatorStep1Binding;->lltMode1:Landroid/widget/LinearLayout;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentExcavatorStep1Binding;->lltMode23:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_7

    goto :goto_5

    :cond_7
    const/4 v4, 0x0

    :goto_5
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 206
    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep1Binding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentExcavatorStep1Binding;->ivStep1:Lpl/droidsonroids/gif/GifImageView;

    invoke-virtual {p0, v1, v0}, Lcom/qianhe/yct/base/BaseProjectFragment;->setGifPlaying(Landroid/widget/ImageView;Z)V

    return-void
.end method
