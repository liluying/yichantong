.class public Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;
.super Lcom/qianhe/yct/base/BaseProjectFragment;
.source "ExcavatorStep3Fragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment$FocusedType;
    }
.end annotation


# instance fields
.field private binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep3Binding;

.field private excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

.field private initEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

.field private lastFocusedType:Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment$FocusedType;

.field private mINS:Lcom/qianhe/baselib/bean/InsNavi;


# direct methods
.method static bridge synthetic -$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;)Lcom/qianhe/yct/databinding/FragmentExcavatorStep3Binding;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep3Binding;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetexcavatorEntity(Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;)Lcom/qianhe/baselib/bean/ExcavatorEntity;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputlastFocusedType(Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment$FocusedType;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;->lastFocusedType:Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment$FocusedType;

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowActualImageDialog(Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;->showActualImageDialog()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateTvDoubtVisibility(Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;->updateTvDoubtVisibility(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;-><init>()V

    .line 38
    sget-object v0, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment$FocusedType;->A1Y:Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment$FocusedType;

    iput-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;->lastFocusedType:Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment$FocusedType;

    return-void
.end method

.method static synthetic access$000(Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;)I
    .locals 0

    .line 29
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;ID)D
    .locals 0

    .line 29
    invoke-virtual {p0, p1, p2, p3}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatOtherToMeter(ID)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$200(Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;)I
    .locals 0

    .line 29
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;ID)D
    .locals 0

    .line 29
    invoke-virtual {p0, p1, p2, p3}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatOtherToMeter(ID)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$400(Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;Landroid/view/View;)V
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/base/BaseProjectFragment;->postWizardNext(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$500(Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;)I
    .locals 0

    .line 29
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;ID)D
    .locals 0

    .line 29
    invoke-virtual {p0, p1, p2, p3}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatOtherToMeter(ID)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$700(Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;Landroid/view/View;)V
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/base/BaseProjectFragment;->postWizardNext(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$800(Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;Landroid/widget/ImageView;I)V
    .locals 0

    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/qianhe/yct/base/BaseProjectFragment;->setGifResource(Landroid/widget/ImageView;I)V

    return-void
.end method

.method static synthetic access$900(Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;Landroid/widget/ImageView;I)V
    .locals 0

    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/qianhe/yct/base/BaseProjectFragment;->setGifResource(Landroid/widget/ImageView;I)V

    return-void
.end method

.method private initGifShow()V
    .locals 4

    .line 163
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep3Binding;->edtAy:Lcom/qianhe/yct/view/NumericEditText;

    sget-object v1, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment$FocusedType;->A1Y:Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment$FocusedType;

    sget v2, Lcom/qianhe/yct/R$drawable;->icon_ay_sensor:I

    sget v3, Lcom/qianhe/yct/R$drawable;->icon_ay_no_sensor:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;->setupParamField(Landroid/view/View;Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment$FocusedType;II)V

    .line 164
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep3Binding;->edtValue:Lcom/qianhe/yct/view/NumericEditText;

    new-instance v1, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment$5;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment$5;-><init>(Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method private initView()V
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep3Binding;->tvDoubt:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v1, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment$1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment$1;-><init>(Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep3Binding;->tvPrevious:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment$2;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment$2;-><init>(Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep3Binding;->tvContinue:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment$3;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment$3;-><init>(Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/qianhe/yct/base/BaseProjectFragment;->bindContinueClick(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 143
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep3Binding;->tvCustomParam:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment$4;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment$4;-><init>(Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 158
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;->initGifShow()V

    .line 159
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;->showData()V

    return-void
.end method

.method private setupParamField(Landroid/view/View;Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment$FocusedType;II)V
    .locals 1

    .line 183
    new-instance v0, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment$6;

    invoke-direct {v0, p0, p2}, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment$6;-><init>(Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment$FocusedType;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    new-instance v0, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment$7;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment$7;-><init>(Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment$FocusedType;II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method private showActualImageDialog()V
    .locals 6

    .line 208
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 209
    sget v1, Lcom/qianhe/yct/R$drawable;->icon_a1y_actual:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/qianhe/yct/R$drawable;->icon_a1y_actual_ceshitu:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "A1y"

    invoke-virtual {v0, v2, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    .line 212
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 215
    invoke-virtual {v0}, Ljava/util/AbstractMap;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 210
    :goto_0
    invoke-static {v1, v3, v0, v2, v5}, Lcom/qianhe/yct/dialog/ActualImageDialogHelper;->showCarousel(Landroid/content/Context;Landroid/content/res/Configuration;Ljava/util/LinkedHashMap;Ljava/lang/String;Z)V

    return-void
.end method

.method private showData()V
    .locals 7

    .line 219
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep3Binding;->unitDropdownSensor:Lcom/qianhe/yct/view/UnitDropdownView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/qianhe/yct/view/UnitDropdownView;->initUnit(Landroid/content/Context;I)V

    .line 220
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep3Binding;->tvUnitValue:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/qianhe/yct/base/BaseProjectFragment;->refreshMode1UnitLabel(Landroid/widget/TextView;)V

    .line 221
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->leftDist:D

    const/4 v2, 0x3

    const-wide/16 v3, 0x0

    cmpl-double v5, v0, v3

    if-eqz v5, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep3Binding;->edtValue:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v1

    iget-object v5, p0, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-wide v5, v5, Lcom/qianhe/baselib/bean/ExcavatorEntity;->leftDist:D

    invoke-virtual {p0, v1, v5, v6, v2}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatMetertoOther(IDI)D

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatDouble(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->Ay:D

    cmpl-double v5, v0, v3

    if-eqz v5, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep3Binding;->edtAy:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v1

    iget-object v3, p0, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-wide v3, v3, Lcom/qianhe/baselib/bean/ExcavatorEntity;->Ay:D

    invoke-virtual {p0, v1, v3, v4, v2}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatMetertoOther(IDI)D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatDouble(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private showPostureTipsDialog()V
    .locals 4

    .line 86
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    if-eqz v0, :cond_2

    iget v0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->mode:I

    sget-object v1, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->NO_SENSOR_FLAT:Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;

    invoke-virtual {v1}, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->getMode()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-boolean v0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->distanceBucketMeasure:Z

    if-eqz v0, :cond_1

    .line 90
    sget v0, Lcom/qianhe/yct/R$string;->excavator_mode4_step3_posture_tips:I

    goto :goto_0

    .line 91
    :cond_1
    sget v0, Lcom/qianhe/yct/R$string;->excavator_step3_posture_tips:I

    .line 92
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/qianhe/yct/base/BaseActivity;

    .line 93
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v2, Lcom/qianhe/yct/R$string;->ok:I

    .line 94
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 92
    invoke-virtual {v1, v0, v2, v3}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private updateTvDoubtVisibility(Z)V
    .locals 3

    .line 175
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget v0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->mode:I

    sget-object v1, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->NO_SENSOR_FLAT:Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;

    invoke-virtual {v1}, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->getMode()I

    move-result v1

    const/16 v2, 0x8

    if-ne v0, v1, :cond_0

    .line 176
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep3Binding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentExcavatorStep3Binding;->tvDoubt:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep3Binding;->tvDoubt:Landroidx/appcompat/widget/AppCompatTextView;

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
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 240
    :cond_0
    iput-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 42
    const-string p1, ","

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-static {p2}, Lcom/qianhe/yct/databinding/FragmentExcavatorStep3Binding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/FragmentExcavatorStep3Binding;

    move-result-object p2

    iput-object p2, p0, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep3Binding;

    .line 43
    iget-object p2, p0, Lcom/qianhe/yct/base/BaseProjectFragment;->mSp:Landroid/content/SharedPreferences;

    const-string p3, "current_coords"

    const-string v0, ""

    invoke-interface {p2, p3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 44
    iget-object p3, p0, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    if-nez p3, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 45
    new-instance p3, Lcom/qianhe/baselib/bean/InsNavi;

    invoke-direct {p3}, Lcom/qianhe/baselib/bean/InsNavi;-><init>()V

    iput-object p3, p0, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    .line 47
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p3, Lcom/qianhe/baselib/bean/InsNavi;->longitude:D

    .line 48
    iget-object p3, p0, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p3, Lcom/qianhe/baselib/bean/InsNavi;->latitude:D

    .line 49
    iget-object p3, p0, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    aget-object p1, p1, p2

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p1

    iput-wide p1, p3, Lcom/qianhe/baselib/bean/InsNavi;->elevation:D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :catch_0
    :cond_0
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->resolveInitExcavatorEntity()Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;->initEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    .line 54
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->resolveExcavatorEntity()Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    .line 55
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;->initView()V

    .line 56
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep3Binding;

    invoke-virtual {p1}, Lcom/qianhe/yct/databinding/FragmentExcavatorStep3Binding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep3Binding;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep3Binding;->ivStep3:Lpl/droidsonroids/gif/GifImageView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/qianhe/yct/base/BaseProjectFragment;->recycleGif(Landroid/widget/ImageView;)V

    .line 246
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->onDestroyView()V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep3Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep3Binding;->ivStep3:Lpl/droidsonroids/gif/GifImageView;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/qianhe/yct/base/BaseProjectFragment;->setGifPlaying(Landroid/widget/ImageView;Z)V

    .line 101
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 7

    .line 61
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 62
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep3Binding;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep3Binding;->tvContinue:Landroid/widget/TextView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/qianhe/yct/base/BaseProjectFragment;->restoreContinueEnabled(Landroid/view/View;)V

    const/4 v0, 0x1

    .line 63
    invoke-direct {p0, v0}, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;->updateTvDoubtVisibility(Z)V

    .line 64
    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep3Binding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentExcavatorStep3Binding;->unitDropdownSensor:Lcom/qianhe/yct/view/UnitDropdownView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/qianhe/yct/view/UnitDropdownView;->initUnit(Landroid/content/Context;I)V

    .line 65
    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep3Binding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentExcavatorStep3Binding;->tvUnitValue:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/qianhe/yct/base/BaseProjectFragment;->refreshMode1UnitLabel(Landroid/widget/TextView;)V

    .line 66
    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-boolean v2, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->distanceBucketMeasure:Z

    .line 67
    iget v1, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->mode:I

    sget-object v3, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->SENSOR:Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;

    invoke-virtual {v3}, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->getMode()I

    move-result v3

    if-ne v1, v3, :cond_2

    .line 68
    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep3Binding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentExcavatorStep3Binding;->ivStep3:Lpl/droidsonroids/gif/GifImageView;

    if-eqz v2, :cond_1

    sget v3, Lcom/qianhe/yct/R$drawable;->icon_ay_mode4_sensor:I

    goto :goto_1

    :cond_1
    sget v3, Lcom/qianhe/yct/R$drawable;->icon_ay_sensor:I

    :goto_1
    invoke-virtual {p0, v1, v3}, Lcom/qianhe/yct/base/BaseProjectFragment;->setGifResource(Landroid/widget/ImageView;I)V

    goto :goto_2

    .line 69
    :cond_2
    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget v1, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->mode:I

    sget-object v3, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->NO_SENSOR_FLAT:Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;

    invoke-virtual {v3}, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->getMode()I

    move-result v3

    if-ne v1, v3, :cond_3

    .line 70
    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep3Binding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentExcavatorStep3Binding;->ivStep3:Lpl/droidsonroids/gif/GifImageView;

    sget v3, Lcom/qianhe/yct/R$drawable;->icon_excavator_al:I

    invoke-virtual {p0, v1, v3}, Lcom/qianhe/yct/base/BaseProjectFragment;->setGifResource(Landroid/widget/ImageView;I)V

    goto :goto_2

    .line 71
    :cond_3
    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget v1, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->mode:I

    sget-object v3, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->NO_SENSOR_NOT_FLAT:Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;

    invoke-virtual {v3}, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->getMode()I

    move-result v3

    if-ne v1, v3, :cond_4

    .line 72
    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep3Binding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentExcavatorStep3Binding;->ivStep3:Lpl/droidsonroids/gif/GifImageView;

    sget v3, Lcom/qianhe/yct/R$drawable;->icon_ay_no_sensor:I

    invoke-virtual {p0, v1, v3}, Lcom/qianhe/yct/base/BaseProjectFragment;->setGifResource(Landroid/widget/ImageView;I)V

    .line 74
    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep3Binding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentExcavatorStep3Binding;->lltMode23:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget v3, v3, Lcom/qianhe/baselib/bean/ExcavatorEntity;->mode:I

    sget-object v4, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->NO_SENSOR_FLAT:Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;

    invoke-virtual {v4}, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->getMode()I

    move-result v4

    const/4 v5, 0x0

    const/16 v6, 0x8

    if-ne v3, v4, :cond_5

    const/16 v3, 0x8

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    :goto_3
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 75
    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep3Binding;

    iget-object v3, v1, Lcom/qianhe/yct/databinding/FragmentExcavatorStep3Binding;->lltMode1:Landroid/widget/LinearLayout;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentExcavatorStep3Binding;->lltMode23:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_6

    const/16 v5, 0x8

    :cond_6
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 76
    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep3Binding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentExcavatorStep3Binding;->lltMode23:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_8

    .line 77
    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep3Binding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentExcavatorStep3Binding;->tvStep3Tips:Landroid/widget/TextView;

    if-eqz v2, :cond_7

    .line 78
    sget v2, Lcom/qianhe/yct/R$string;->has_sensor_mode4_step3_tips:I

    goto :goto_4

    .line 79
    :cond_7
    sget v2, Lcom/qianhe/yct/R$string;->has_sensor_step3_tips:I

    .line 77
    :goto_4
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 81
    :cond_8
    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep3Binding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentExcavatorStep3Binding;->ivStep3:Lpl/droidsonroids/gif/GifImageView;

    invoke-virtual {p0, v1, v0}, Lcom/qianhe/yct/base/BaseProjectFragment;->setGifPlaying(Landroid/widget/ImageView;Z)V

    .line 82
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;->showPostureTipsDialog()V

    return-void
.end method
