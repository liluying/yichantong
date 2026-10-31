.class public Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;
.super Lcom/qianhe/yct/base/BaseProjectFragment;
.source "PolyLineStep1Fragment.java"


# instance fields
.field private binding:Lcom/qianhe/yct/databinding/FragmentPolylineStep1Binding;

.field private currentSlopeMode:I

.field private initEntity:Lcom/qianhe/baselib/bean/PolyLineEntity;

.field private mINS:Lcom/qianhe/baselib/bean/InsNavi;

.field private polyLineEntity:Lcom/qianhe/baselib/bean/PolyLineEntity;

.field private slopeModeInitializing:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;)Lcom/qianhe/yct/databinding/FragmentPolylineStep1Binding;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentPolylineStep1Binding;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentSlopeMode(Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;->currentSlopeMode:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetslopeModeInitializing(Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;->slopeModeInitializing:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$mapplyParamsToEntity(Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;->applyParamsToEntity()V

    return-void
.end method

.method static bridge synthetic -$$Nest$misRatioInputEmpty(Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;->isRatioInputEmpty()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$monSlopeModeChanged(Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;->onSlopeModeChanged(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateStatusIcon(Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;->updateStatusIcon()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput v0, p0, Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;->currentSlopeMode:I

    return-void
.end method

.method private applyParamsToEntity()V
    .locals 6

    .line 224
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;->polyLineEntity:Lcom/qianhe/baselib/bean/PolyLineEntity;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/PolyLineEntity;->depthA:D

    .line 225
    iput-wide v1, v0, Lcom/qianhe/baselib/bean/PolyLineEntity;->depthB:D

    .line 226
    iget v3, p0, Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;->currentSlopeMode:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    .line 227
    iget-object v1, p0, Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentPolylineStep1Binding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentPolylineStep1Binding;->edtRatio:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v1

    const/4 v3, 0x3

    invoke-virtual {p0, v1, v2, v3}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/PolyLineEntity;->ratio:D

    .line 228
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;->polyLineEntity:Lcom/qianhe/baselib/bean/PolyLineEntity;

    iput v5, v0, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    goto :goto_0

    :cond_0
    if-ne v3, v4, :cond_1

    .line 230
    iput-wide v1, v0, Lcom/qianhe/baselib/bean/PolyLineEntity;->ratio:D

    .line 231
    iput v4, v0, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    goto :goto_0

    .line 233
    :cond_1
    iput-wide v1, v0, Lcom/qianhe/baselib/bean/PolyLineEntity;->ratio:D

    const/4 v1, 0x0

    .line 234
    iput v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    .line 236
    :goto_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;->polyLineEntity:Lcom/qianhe/baselib/bean/PolyLineEntity;

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v1

    iget-object v2, p0, Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentPolylineStep1Binding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/FragmentPolylineStep1Binding;->edtWidth:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v2}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatOtherToMeter(IDI)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/PolyLineEntity;->width:D

    .line 237
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;->polyLineEntity:Lcom/qianhe/baselib/bean/PolyLineEntity;

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v1

    iput v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->showUnit:I

    return-void
.end method

.method private applySlopeModeUi(I)V
    .locals 4

    .line 169
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentPolylineStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentPolylineStep1Binding;->lltRatio:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 170
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentPolylineStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentPolylineStep1Binding;->tvSlopeTip:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    if-nez p1, :cond_1

    .line 172
    iget-object p1, p0, Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentPolylineStep1Binding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentPolylineStep1Binding;->tvSlopeTip:Landroid/widget/TextView;

    sget v0, Lcom/qianhe/yct/R$string;->polyline_slope_tip_none:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    return-void

    :cond_1
    if-ne p1, v2, :cond_2

    .line 174
    iget-object p1, p0, Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentPolylineStep1Binding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentPolylineStep1Binding;->tvSlopeTip:Landroid/widget/TextView;

    sget v0, Lcom/qianhe/yct/R$string;->polyline_slope_tip_overall:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    return-void

    .line 176
    :cond_2
    iget-object p1, p0, Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentPolylineStep1Binding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentPolylineStep1Binding;->tvSlopeTip:Landroid/widget/TextView;

    sget v0, Lcom/qianhe/yct/R$string;->polyline_slope_tip_segment:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method private initView()V
    .locals 3

    .line 66
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentPolylineStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentPolylineStep1Binding;->tvPrevious:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/PolyLineStep1Fragment$1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/PolyLineStep1Fragment$1;-><init>(Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentPolylineStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentPolylineStep1Binding;->tvContinue:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/PolyLineStep1Fragment$2;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/PolyLineStep1Fragment$2;-><init>(Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;->setupSlopeModeSpinner()V

    .line 87
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentPolylineStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentPolylineStep1Binding;->edtRatio:Lcom/qianhe/yct/view/NumericEditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/view/NumericEditText;->setFillZeroOnBlur(Z)V

    .line 88
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentPolylineStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentPolylineStep1Binding;->edtRatio:Lcom/qianhe/yct/view/NumericEditText;

    new-instance v1, Lcom/qianhe/yct/fragment/PolyLineStep1Fragment$3;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/PolyLineStep1Fragment$3;-><init>(Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 104
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;->showData()V

    .line 106
    new-instance v0, Lcom/qianhe/yct/utils/KeyboardUtil;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/qianhe/yct/fragment/PolyLineStep1Fragment$4;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/fragment/PolyLineStep1Fragment$4;-><init>(Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;)V

    invoke-direct {v0, v1, v2}, Lcom/qianhe/yct/utils/KeyboardUtil;-><init>(Landroid/app/Activity;Lcom/qianhe/yct/utils/KeyboardUtil$OnKeyboardVisibilityListener;)V

    return-void
.end method

.method private isRatioInputEmpty()Z
    .locals 3

    .line 160
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentPolylineStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentPolylineStep1Binding;->edtRatio:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 161
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    .line 164
    :cond_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 165
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "."

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "-"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    :goto_0
    return v2
.end method

.method private onSlopeModeChanged(I)V
    .locals 5

    .line 144
    iput p1, p0, Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;->currentSlopeMode:I

    .line 145
    const-string v0, ""

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    if-ne p1, v3, :cond_3

    .line 147
    iget-object v4, p0, Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;->initEntity:Lcom/qianhe/baselib/bean/PolyLineEntity;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/qianhe/baselib/bean/PolyLineEntity;->isOverallSlopeMode()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    .line 148
    iget-object v1, p0, Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;->initEntity:Lcom/qianhe/baselib/bean/PolyLineEntity;

    iget-wide v1, v1, Lcom/qianhe/baselib/bean/PolyLineEntity;->ratio:D

    .line 149
    :cond_1
    iget-object v4, p0, Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;->polyLineEntity:Lcom/qianhe/baselib/bean/PolyLineEntity;

    iput-wide v1, v4, Lcom/qianhe/baselib/bean/PolyLineEntity;->ratio:D

    .line 150
    iget-object v4, p0, Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentPolylineStep1Binding;

    iget-object v4, v4, Lcom/qianhe/yct/databinding/FragmentPolylineStep1Binding;->edtRatio:Lcom/qianhe/yct/view/NumericEditText;

    if-eqz v3, :cond_2

    const/4 v0, 0x3

    invoke-virtual {p0, v1, v2, v0}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 152
    :cond_3
    iget-object v3, p0, Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;->polyLineEntity:Lcom/qianhe/baselib/bean/PolyLineEntity;

    iput-wide v1, v3, Lcom/qianhe/baselib/bean/PolyLineEntity;->ratio:D

    .line 153
    iget-object v1, p0, Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentPolylineStep1Binding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentPolylineStep1Binding;->edtRatio:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    :goto_1
    invoke-direct {p0, p1}, Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;->applySlopeModeUi(I)V

    .line 156
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;->updateStatusIcon()V

    return-void
.end method

.method private resolveSlopeMode(Lcom/qianhe/baselib/bean/PolyLineEntity;)I
    .locals 1

    .line 199
    invoke-virtual {p1}, Lcom/qianhe/baselib/bean/PolyLineEntity;->isOverallSlopeMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 200
    :cond_0
    invoke-virtual {p1}, Lcom/qianhe/baselib/bean/PolyLineEntity;->isSegmentSlopeMode()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private setupSlopeModeSpinner()V
    .locals 4

    .line 120
    sget v0, Lcom/qianhe/yct/R$string;->set_no_slope_ratio:I

    .line 121
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/qianhe/yct/R$string;->set_overall_slope_ratio:I

    .line 122
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/qianhe/yct/R$string;->set_segment_slope_ratio:I

    .line 123
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 125
    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x1090008

    invoke-direct {v1, v2, v3, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const v0, 0x1090009

    .line 126
    invoke-virtual {v1, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 127
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentPolylineStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentPolylineStep1Binding;->spSlopeMode:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 128
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentPolylineStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentPolylineStep1Binding;->spSlopeMode:Landroid/widget/Spinner;

    new-instance v1, Lcom/qianhe/yct/fragment/PolyLineStep1Fragment$5;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/PolyLineStep1Fragment$5;-><init>(Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method private showData()V
    .locals 9

    .line 205
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentPolylineStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentPolylineStep1Binding;->unitDropdown:Lcom/qianhe/yct/view/UnitDropdownView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/qianhe/yct/view/UnitDropdownView;->initUnit(Landroid/content/Context;I)V

    .line 206
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;->polyLineEntity:Lcom/qianhe/baselib/bean/PolyLineEntity;

    invoke-direct {p0, v0}, Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;->resolveSlopeMode(Lcom/qianhe/baselib/bean/PolyLineEntity;)I

    move-result v0

    iput v0, p0, Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;->currentSlopeMode:I

    const/4 v1, 0x1

    .line 207
    iput-boolean v1, p0, Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;->slopeModeInitializing:Z

    .line 208
    iget-object v2, p0, Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentPolylineStep1Binding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/FragmentPolylineStep1Binding;->spSlopeMode:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/AdapterView;->setSelection(I)V

    const/4 v0, 0x0

    .line 209
    iput-boolean v0, p0, Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;->slopeModeInitializing:Z

    .line 210
    iget v2, p0, Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;->currentSlopeMode:I

    invoke-direct {p0, v2}, Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;->applySlopeModeUi(I)V

    .line 211
    iget v2, p0, Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;->currentSlopeMode:I

    const-wide/16 v3, 0x0

    const-string v5, ""

    if-ne v2, v1, :cond_3

    .line 212
    iget-object v2, p0, Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;->polyLineEntity:Lcom/qianhe/baselib/bean/PolyLineEntity;

    iget v6, v2, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    if-eq v6, v1, :cond_1

    iget-wide v6, v2, Lcom/qianhe/baselib/bean/PolyLineEntity;->ratio:D

    cmpl-double v8, v6, v3

    if-eqz v8, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 214
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentPolylineStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentPolylineStep1Binding;->edtRatio:Lcom/qianhe/yct/view/NumericEditText;

    if-eqz v1, :cond_2

    iget-wide v1, v2, Lcom/qianhe/baselib/bean/PolyLineEntity;->ratio:D

    const/4 v6, 0x3

    invoke-virtual {p0, v1, v2, v6}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v5

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 216
    :cond_3
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentPolylineStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentPolylineStep1Binding;->edtRatio:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    :goto_2
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;->updateStatusIcon()V

    .line 219
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentPolylineStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentPolylineStep1Binding;->edtWidth:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;->polyLineEntity:Lcom/qianhe/baselib/bean/PolyLineEntity;

    iget-wide v1, v1, Lcom/qianhe/baselib/bean/PolyLineEntity;->width:D

    cmpl-double v6, v1, v3

    if-nez v6, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v1

    iget-object v2, p0, Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;->polyLineEntity:Lcom/qianhe/baselib/bean/PolyLineEntity;

    iget-wide v2, v2, Lcom/qianhe/baselib/bean/PolyLineEntity;->width:D

    const/4 v4, 0x2

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatMetertoOther(IDI)D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatDouble(D)Ljava/lang/String;

    move-result-object v5

    :goto_3
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateStatusIcon()V
    .locals 5

    .line 184
    iget v0, p0, Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;->currentSlopeMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;->isRatioInputEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentPolylineStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentPolylineStep1Binding;->edtRatio:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-gez v4, :cond_1

    .line 190
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentPolylineStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentPolylineStep1Binding;->ivStatus:Landroid/widget/ImageView;

    sget v1, Lcom/qianhe/yct/R$drawable;->icon_polyline_fu:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    :cond_1
    cmpl-double v4, v0, v2

    if-lez v4, :cond_2

    .line 192
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentPolylineStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentPolylineStep1Binding;->ivStatus:Landroid/widget/ImageView;

    sget v1, Lcom/qianhe/yct/R$drawable;->icon_polyline_zheng:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 194
    :cond_2
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentPolylineStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentPolylineStep1Binding;->ivStatus:Landroid/widget/ImageView;

    sget v1, Lcom/qianhe/yct/R$drawable;->icon_polyline_step2_default:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 185
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentPolylineStep1Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentPolylineStep1Binding;->ivStatus:Landroid/widget/ImageView;

    sget v1, Lcom/qianhe/yct/R$drawable;->icon_polyline_step2_default:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

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

    .line 247
    :cond_0
    iput-object p1, p0, Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 45
    const-string p1, ","

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-static {p2}, Lcom/qianhe/yct/databinding/FragmentPolylineStep1Binding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/FragmentPolylineStep1Binding;

    move-result-object p2

    iput-object p2, p0, Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentPolylineStep1Binding;

    .line 46
    iget-object p2, p0, Lcom/qianhe/yct/base/BaseProjectFragment;->mSp:Landroid/content/SharedPreferences;

    const-string p3, "current_coords"

    const-string v0, ""

    invoke-interface {p2, p3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 47
    iget-object p3, p0, Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    if-nez p3, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 48
    new-instance p3, Lcom/qianhe/baselib/bean/InsNavi;

    invoke-direct {p3}, Lcom/qianhe/baselib/bean/InsNavi;-><init>()V

    iput-object p3, p0, Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    .line 50
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p3, Lcom/qianhe/baselib/bean/InsNavi;->longitude:D

    .line 51
    iget-object p3, p0, Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p3, Lcom/qianhe/baselib/bean/InsNavi;->latitude:D

    .line 52
    iget-object p3, p0, Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

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
    nop

    .line 56
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 58
    const-string p2, "initEntity"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Lcom/qianhe/baselib/bean/PolyLineEntity;

    iput-object p2, p0, Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;->initEntity:Lcom/qianhe/baselib/bean/PolyLineEntity;

    .line 59
    const-string p2, "baseProEntity"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/qianhe/baselib/bean/PolyLineEntity;

    iput-object p1, p0, Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;->polyLineEntity:Lcom/qianhe/baselib/bean/PolyLineEntity;

    .line 61
    :cond_1
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;->initView()V

    .line 62
    iget-object p1, p0, Lcom/qianhe/yct/fragment/PolyLineStep1Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentPolylineStep1Binding;

    invoke-virtual {p1}, Lcom/qianhe/yct/databinding/FragmentPolylineStep1Binding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    return-object p1
.end method
