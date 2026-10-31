.class public Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;
.super Lcom/qianhe/yct/base/BaseProjectFragment;
.source "ExcavatorStep4Fragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$FocusedType;
    }
.end annotation


# instance fields
.field private binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep4Binding;

.field private continueProcessing:Z

.field private excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

.field private initEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

.field private lastFocusedType:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$FocusedType;

.field private mGGA:Lcom/qianhe/baselib/bean/GGAEntity;

.field private mINS:Lcom/qianhe/baselib/bean/InsNavi;

.field private request:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;)Lcom/qianhe/yct/databinding/FragmentExcavatorStep4Binding;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep4Binding;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcontinueProcessing(Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->continueProcessing:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetexcavatorEntity(Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;)Lcom/qianhe/baselib/bean/ExcavatorEntity;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmINS(Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;)Lcom/qianhe/baselib/bean/InsNavi;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputlastFocusedType(Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$FocusedType;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->lastFocusedType:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$FocusedType;

    return-void
.end method

.method static bridge synthetic -$$Nest$monLocalCalibrationSuccess(Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->onLocalCalibrationSuccess(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mprepareMode1CalibValuesInMeters(Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->prepareMode1CalibValuesInMeters()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetContinueProcessing(Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->setContinueProcessing(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowActualImageDialog(Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->showActualImageDialog()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartLocalCalibration(Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->startLocalCalibration(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateStepGif(Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$FocusedType;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->updateStepGif(Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$FocusedType;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateTvDoubtVisibility(Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->updateTvDoubtVisibility(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;-><init>()V

    .line 59
    sget-object v0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$FocusedType;->AX:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$FocusedType;

    iput-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->lastFocusedType:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$FocusedType;

    return-void
.end method

.method static synthetic access$000(Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;)I
    .locals 0

    .line 47
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;ID)D
    .locals 0

    .line 47
    invoke-virtual {p0, p1, p2, p3}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatOtherToMeter(ID)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$1000(Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;)I
    .locals 0

    .line 47
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result p0

    return p0
.end method

.method static synthetic access$1100(Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;IDI)D
    .locals 0

    .line 47
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatOtherToMeter(IDI)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$1200(Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;)I
    .locals 0

    .line 47
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;IDI)D
    .locals 0

    .line 47
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatOtherToMeter(IDI)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$1400(Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;)I
    .locals 0

    .line 47
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result p0

    return p0
.end method

.method static synthetic access$1500(Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;IDI)D
    .locals 0

    .line 47
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatOtherToMeter(IDI)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$1600(Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;)V
    .locals 0

    .line 47
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->cancelLoadingDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;)I
    .locals 0

    .line 47
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;ID)D
    .locals 0

    .line 47
    invoke-virtual {p0, p1, p2, p3}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatOtherToMeter(ID)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$400(Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;)I
    .locals 0

    .line 47
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;IDI)D
    .locals 0

    .line 47
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatOtherToMeter(IDI)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$600(Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;)I
    .locals 0

    .line 47
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;IDI)D
    .locals 0

    .line 47
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatOtherToMeter(IDI)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$800(Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;)I
    .locals 0

    .line 47
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;IDI)D
    .locals 0

    .line 47
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatOtherToMeter(IDI)D

    move-result-wide p0

    return-wide p0
.end method

.method private initGifShow()V
    .locals 2

    .line 188
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep4Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep4Binding;->edtAx:Lcom/qianhe/yct/view/NumericEditText;

    sget-object v1, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$FocusedType;->AX:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$FocusedType;

    invoke-direct {p0, v0, v1}, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->setupParamField(Landroid/view/View;Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$FocusedType;)V

    .line 189
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep4Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep4Binding;->edtDx:Lcom/qianhe/yct/view/NumericEditText;

    sget-object v1, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$FocusedType;->DX:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$FocusedType;

    invoke-direct {p0, v0, v1}, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->setupParamField(Landroid/view/View;Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$FocusedType;)V

    .line 190
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep4Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep4Binding;->edtAD:Lcom/qianhe/yct/view/NumericEditText;

    sget-object v1, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$FocusedType;->AD:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$FocusedType;

    invoke-direct {p0, v0, v1}, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->setupParamField(Landroid/view/View;Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$FocusedType;)V

    .line 191
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep4Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep4Binding;->edtBD:Lcom/qianhe/yct/view/NumericEditText;

    sget-object v1, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$FocusedType;->BD:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$FocusedType;

    invoke-direct {p0, v0, v1}, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->setupParamField(Landroid/view/View;Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$FocusedType;)V

    .line 192
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep4Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep4Binding;->edtCD:Lcom/qianhe/yct/view/NumericEditText;

    sget-object v1, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$FocusedType;->CD:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$FocusedType;

    invoke-direct {p0, v0, v1}, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->setupParamField(Landroid/view/View;Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$FocusedType;)V

    .line 193
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep4Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep4Binding;->edtBC:Lcom/qianhe/yct/view/NumericEditText;

    sget-object v1, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$FocusedType;->BC:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$FocusedType;

    invoke-direct {p0, v0, v1}, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->setupParamField(Landroid/view/View;Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$FocusedType;)V

    .line 194
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep4Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep4Binding;->edtValue:Lcom/qianhe/yct/view/NumericEditText;

    new-instance v1, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$4;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$4;-><init>(Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method private initView()V
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep4Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep4Binding;->tvDoubt:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v1, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$1;-><init>(Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep4Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep4Binding;->tvPrevious:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$2;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$2;-><init>(Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep4Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep4Binding;->tvContinue:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$3;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$3;-><init>(Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/qianhe/yct/base/BaseProjectFragment;->bindContinueClick(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 183
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->initGifShow()V

    .line 184
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->showData()V

    return-void
.end method

.method private onLocalCalibrationSuccess(Ljava/lang/String;)V
    .locals 6

    .line 358
    const-string/jumbo v0, "\u6316\u673a\u6821\u51c6\u6210\u529f"

    invoke-static {v0}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->i(Ljava/lang/String;)V

    .line 359
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/qianhe/yct/R$string;->config_success:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 360
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-static {v0}, Lcom/qianhe/yct/utils/CalibParamsIdUtil;->buildCalibParamsId(Lcom/qianhe/baselib/bean/ExcavatorEntity;)Ljava/lang/String;

    move-result-object v0

    .line 361
    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iput-object v0, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParamsId:Ljava/lang/String;

    .line 362
    iput-object p1, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParams:Ljava/lang/String;

    .line 363
    invoke-static {}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->hasActiveSession()Z

    move-result v1

    if-nez v1, :cond_0

    .line 364
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    const-string v3, "local"

    invoke-static {v1, v2, v3}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->beginForExcavator(Landroid/content/Context;Lcom/qianhe/baselib/bean/ExcavatorEntity;Ljava/lang/String;)V

    .line 366
    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->recordClassicGoAndSetParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    invoke-direct {p0, v0, p1}, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->syncCalibParamsToDevice(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 368
    new-instance v2, Lcom/google/gson/JsonObject;

    invoke-direct {v2}, Lcom/google/gson/JsonObject;-><init>()V

    .line 369
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v4, "ok"

    invoke-virtual {v2, v4, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 370
    iget-object v3, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-object v3, v3, Lcom/qianhe/baselib/bean/ExcavatorEntity;->name:Ljava/lang/String;

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v3, ""

    :goto_0
    const-string v4, "name"

    invoke-virtual {v2, v4, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    const-string v3, "calib_params_id"

    invoke-virtual {v2, v3, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    iget-object v3, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-wide v4, v3, Lcom/qianhe/baselib/bean/ExcavatorEntity;->localId:J

    iget-object v3, v3, Lcom/qianhe/baselib/bean/ExcavatorEntity;->name:Ljava/lang/String;

    invoke-static {v4, v5, v3}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->updateSessionExcavator(JLjava/lang/String;)V

    if-eqz v1, :cond_2

    .line 374
    invoke-static {v2}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->scheduleEndAfterSetParamReply(Lcom/google/gson/JsonObject;)V

    goto :goto_1

    .line 376
    :cond_2
    invoke-static {}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->clearAwaitSetParamReply()V

    const/4 v1, 0x1

    .line 377
    invoke-static {v1, v2}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->endSession(ZLcom/google/gson/JsonObject;)V

    .line 379
    :goto_1
    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-wide v1, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->localId:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_3

    .line 380
    invoke-direct {p0, v0, p1}, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->saveCalibrateResult(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private prepareMode1CalibValuesInMeters()V
    .locals 7

    .line 316
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v1

    iget-object v2, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-wide v2, v2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->deviceHeight:D

    const/4 v4, 0x3

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatOtherToMeter(IDI)D

    move-result-wide v1

    iget-object v3, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget v5, v3, Lcom/qianhe/baselib/bean/ExcavatorEntity;->method:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    const-wide v5, 0x3f9999999999999aL    # 0.025

    goto :goto_0

    :cond_0
    const-wide/16 v5, 0x0

    :goto_0
    add-double/2addr v1, v5

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->deviceHeight:D

    .line 317
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v0

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-wide v1, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->leftDist:D

    invoke-virtual {p0, v0, v1, v2, v4}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatOtherToMeter(IDI)D

    move-result-wide v0

    iput-wide v0, v3, Lcom/qianhe/baselib/bean/ExcavatorEntity;->leftDist:D

    .line 318
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v1

    iget-object v2, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-wide v2, v2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->rigthDist:D

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatOtherToMeter(IDI)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->rigthDist:D

    .line 319
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v1

    iget-object v2, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-wide v2, v2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->spanDist:D

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatOtherToMeter(IDI)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->spanDist:D

    return-void
.end method

.method private recordClassicGoAndSetParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 385
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/application/YCTApplication;->getSensorInfo()Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;

    move-result-object v5

    .line 386
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget v0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->mode:I

    sget-object v1, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->NO_SENSOR_FLAT:Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;

    invoke-virtual {v1}, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->getMode()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 388
    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-object v2, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->mGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    iget-object v3, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-static {v1, v2, v3, v5}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->recordMode1Input(Lcom/qianhe/baselib/bean/ExcavatorEntity;Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;)V

    goto :goto_1

    .line 390
    :cond_1
    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-object v2, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->mGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    iget-object v3, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-static {v1, v2, v3, v5}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->recordMode23Input(Lcom/qianhe/baselib/bean/ExcavatorEntity;Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;)V

    .line 392
    :goto_1
    new-instance v2, Lcom/google/gson/JsonObject;

    invoke-direct {v2}, Lcom/google/gson/JsonObject;-><init>()V

    .line 393
    const-string v1, "cmd"

    if-eqz v0, :cond_2

    .line 394
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-static {v0}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->buildMode1GoCmd(Lcom/qianhe/baselib/bean/ExcavatorEntity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 396
    :cond_2
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-static {v0}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->buildMode23GoCmd(Lcom/qianhe/baselib/bean/ExcavatorEntity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    :goto_2
    iget-object v3, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->mGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    iget-object v4, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    const/4 v6, 0x0

    const-string v1, "GO"

    invoke-static/range {v1 .. v6}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->recordCmdWithLive(Ljava/lang/String;Lcom/google/gson/JsonObject;Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;Ljava/lang/Double;)V

    .line 400
    new-instance v2, Lcom/google/gson/JsonObject;

    invoke-direct {v2}, Lcom/google/gson/JsonObject;-><init>()V

    .line 401
    const-string v0, "set_param"

    invoke-static {p1, p2}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->buildSetParam(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object p1

    invoke-virtual {v2, v0, p1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 402
    iget-object v3, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->mGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    iget-object v4, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    const-string v1, "SET_PARAM"

    invoke-static/range {v1 .. v6}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->recordCmdWithLive(Ljava/lang/String;Lcom/google/gson/JsonObject;Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;Ljava/lang/Double;)V

    return-void
.end method

.method private saveCalibrateResult(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 422
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-object v0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 423
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-object v1, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/db/DatabaseManager;->isExcavatorNameExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iput-object p1, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParamsId:Ljava/lang/String;

    .line 428
    iput-object p2, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParams:Ljava/lang/String;

    .line 429
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object p1

    iget-object p2, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-virtual {p1, p2}, Lcom/qianhe/yct/db/DatabaseManager;->insertExcavator(Lcom/qianhe/baselib/bean/ExcavatorEntity;)J

    move-result-wide p1

    iput-wide p1, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->localId:J

    .line 430
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setResult(I)V

    const/4 p1, 0x1

    .line 431
    iput-boolean p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->request:Z

    .line 432
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-virtual {p1, p2, v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->createExcavator(Landroid/content/Context;Lcom/qianhe/baselib/bean/ExcavatorEntity;)V

    return-void

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 424
    invoke-direct {p0, p1}, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->setContinueProcessing(Z)V

    return-void
.end method

.method private setContinueProcessing(Z)V
    .locals 5

    .line 295
    iput-boolean p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->continueProcessing:Z

    .line 296
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    if-eqz v0, :cond_1

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->localId:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 297
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep4Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep4Binding;->tvContinue:Landroid/widget/TextView;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method private setupParamField(Landroid/view/View;Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$FocusedType;)V
    .locals 1

    .line 213
    new-instance v0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$5;

    invoke-direct {v0, p0, p2}, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$5;-><init>(Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$FocusedType;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    new-instance v0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$6;

    invoke-direct {v0, p0, p2}, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$6;-><init>(Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$FocusedType;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method private showActualImageDialog()V
    .locals 7

    .line 272
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 273
    sget v1, Lcom/qianhe/yct/R$drawable;->icon_ax_actual:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/qianhe/yct/R$drawable;->icon_ax_actual_ceshitu:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "AX"

    invoke-virtual {v0, v2, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    iget-boolean v1, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->distanceBucketMeasure:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    .line 276
    sget v4, Lcom/qianhe/yct/R$drawable;->icon_dx_actual:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget v5, Lcom/qianhe/yct/R$drawable;->icon_dx_actual_ceshitu:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$$ExternalSyntheticBackport1;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const-string v5, "DX"

    invoke-virtual {v0, v5, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    :cond_1
    sget v4, Lcom/qianhe/yct/R$drawable;->icon_ad_actual:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$$ExternalSyntheticBackport2;->m(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const-string v5, "AD"

    invoke-virtual {v0, v5, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    sget v4, Lcom/qianhe/yct/R$drawable;->icon_bc_actual:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$$ExternalSyntheticBackport3;->m(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const-string v5, "BC"

    invoke-virtual {v0, v5, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    sget v4, Lcom/qianhe/yct/R$drawable;->icon_cd_actual:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$$ExternalSyntheticBackport4;->m(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const-string v5, "CD"

    invoke-virtual {v0, v5, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    sget v4, Lcom/qianhe/yct/R$drawable;->icon_bd_actual:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$$ExternalSyntheticBackport5;->m(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const-string v5, "BD"

    invoke-virtual {v0, v5, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    iget-object v4, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->lastFocusedType:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$FocusedType;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    if-eqz v1, :cond_2

    .line 283
    sget-object v1, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$FocusedType;->DX:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$FocusedType;

    iget-object v5, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->lastFocusedType:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$FocusedType;

    if-ne v1, v5, :cond_2

    .line 284
    sget-object v1, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$FocusedType;->AX:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$FocusedType;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    .line 287
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    .line 288
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    .line 291
    invoke-virtual {v0}, Ljava/util/AbstractMap;->size()I

    move-result v6

    if-le v6, v3, :cond_3

    const/4 v2, 0x1

    .line 286
    :cond_3
    invoke-static {v1, v5, v0, v4, v2}, Lcom/qianhe/yct/dialog/ActualImageDialogHelper;->showCarousel(Landroid/content/Context;Landroid/content/res/Configuration;Ljava/util/LinkedHashMap;Ljava/lang/String;Z)V

    return-void
.end method

.method private showData()V
    .locals 7

    .line 302
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep4Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep4Binding;->unitDropdownSensor:Lcom/qianhe/yct/view/UnitDropdownView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/qianhe/yct/view/UnitDropdownView;->initUnit(Landroid/content/Context;I)V

    .line 303
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep4Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep4Binding;->tvUnitValue:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/qianhe/yct/base/BaseProjectFragment;->refreshMode1UnitLabel(Landroid/widget/TextView;)V

    .line 304
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->spanDist:D

    const/4 v2, 0x3

    const-wide/16 v3, 0x0

    cmpl-double v5, v0, v3

    if-eqz v5, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep4Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep4Binding;->edtValue:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v1

    iget-object v5, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-wide v5, v5, Lcom/qianhe/baselib/bean/ExcavatorEntity;->spanDist:D

    invoke-virtual {p0, v1, v5, v6, v2}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatMetertoOther(IDI)D

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatDouble(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->Ax:D

    cmpl-double v5, v0, v3

    if-eqz v5, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep4Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep4Binding;->edtAx:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v1

    iget-object v5, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-wide v5, v5, Lcom/qianhe/baselib/bean/ExcavatorEntity;->Ax:D

    invoke-virtual {p0, v1, v5, v6, v2}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatMetertoOther(IDI)D

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatDouble(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 306
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-boolean v1, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->distanceBucketMeasure:Z

    if-nez v1, :cond_2

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->Dx:D

    cmpl-double v5, v0, v3

    if-eqz v5, :cond_2

    .line 307
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep4Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep4Binding;->edtDx:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v1

    iget-object v5, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-wide v5, v5, Lcom/qianhe/baselib/bean/ExcavatorEntity;->Dx:D

    invoke-virtual {p0, v1, v5, v6, v2}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatMetertoOther(IDI)D

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatDouble(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 309
    :cond_2
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->AD:D

    cmpl-double v5, v0, v3

    if-eqz v5, :cond_3

    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep4Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep4Binding;->edtAD:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v1

    iget-object v5, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-wide v5, v5, Lcom/qianhe/baselib/bean/ExcavatorEntity;->AD:D

    invoke-virtual {p0, v1, v5, v6, v2}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatMetertoOther(IDI)D

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatDouble(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 310
    :cond_3
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->BD:D

    cmpl-double v5, v0, v3

    if-eqz v5, :cond_4

    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep4Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep4Binding;->edtBD:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v1

    iget-object v5, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-wide v5, v5, Lcom/qianhe/baselib/bean/ExcavatorEntity;->BD:D

    invoke-virtual {p0, v1, v5, v6, v2}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatMetertoOther(IDI)D

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatDouble(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    :cond_4
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->CD:D

    cmpl-double v5, v0, v3

    if-eqz v5, :cond_5

    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep4Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep4Binding;->edtCD:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v1

    iget-object v5, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-wide v5, v5, Lcom/qianhe/baselib/bean/ExcavatorEntity;->CD:D

    invoke-virtual {p0, v1, v5, v6, v2}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatMetertoOther(IDI)D

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatDouble(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    :cond_5
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->BC:D

    cmpl-double v5, v0, v3

    if-eqz v5, :cond_6

    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep4Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep4Binding;->edtBC:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v1

    iget-object v3, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-wide v3, v3, Lcom/qianhe/baselib/bean/ExcavatorEntity;->BC:D

    invoke-virtual {p0, v1, v3, v4, v2}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatMetertoOther(IDI)D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatDouble(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    return-void
.end method

.method private showVerifyAccuracy()V
    .locals 1

    .line 444
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;

    if-eqz v0, :cond_0

    .line 445
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;

    invoke-virtual {v0}, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->showVerifyAccuracy()V

    :cond_0
    return-void
.end method

.method private startLocalCalibration(Ljava/lang/String;)V
    .locals 6

    .line 323
    sget v0, Lcom/qianhe/yct/R$string;->please_wait:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qianhe/yct/base/BaseProjectFragment;->showLoadingDialog(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 324
    invoke-direct {p0, v0}, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->setContinueProcessing(Z)V

    .line 325
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    .line 326
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qianhe/yct/application/YCTApplication;->getSensorInfo()Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;

    move-result-object v1

    .line 327
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u6316\u673a\u6821\u51c6 -> \u6a21\u5f0f"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget v3, v3, Lcom/qianhe/baselib/bean/ExcavatorEntity;->mode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 328
    iget-object v3, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->mGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    iget-object v4, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/qianhe/yct/application/YCTApplication;->getSensorInfo()Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;

    move-result-object v5

    invoke-static {v2, p1, v3, v4, v5}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->log(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;)V

    .line 329
    new-instance p1, Ljava/lang/Thread;

    new-instance v2, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$7;

    invoke-direct {v2, p0, v0, v1}, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$7;-><init>(Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;)V

    invoke-direct {p1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 354
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private syncCalibParamsToDevice(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 407
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 410
    :cond_0
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/application/YCTApplication;->isDemo()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 413
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

    .line 416
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

    .line 417
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

.method private updateStepGif(Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$FocusedType;)V
    .locals 3

    .line 233
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->distanceBucketMeasure:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 236
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_b

    if-eq p1, v1, :cond_9

    const/4 v1, 0x2

    if-eq p1, v1, :cond_7

    const/4 v1, 0x3

    if-eq p1, v1, :cond_5

    const/4 v1, 0x4

    if-eq p1, v1, :cond_3

    const/4 v1, 0x5

    if-eq p1, v1, :cond_1

    goto/16 :goto_8

    :cond_1
    if-eqz v0, :cond_2

    .line 250
    sget p1, Lcom/qianhe/yct/R$drawable;->icon_bd_mode4_sensor:I

    goto :goto_1

    :cond_2
    sget p1, Lcom/qianhe/yct/R$drawable;->icon_bd_sensor:I

    .line 251
    :goto_1
    sget v0, Lcom/qianhe/yct/R$drawable;->icon_bd_no_sensor:I

    goto :goto_7

    :cond_3
    if-eqz v0, :cond_4

    .line 254
    sget p1, Lcom/qianhe/yct/R$drawable;->icon_cd_mode4_sensor:I

    goto :goto_2

    :cond_4
    sget p1, Lcom/qianhe/yct/R$drawable;->icon_cd_sensor:I

    .line 255
    :goto_2
    sget v0, Lcom/qianhe/yct/R$drawable;->icon_cd_no_sensor:I

    goto :goto_7

    :cond_5
    if-eqz v0, :cond_6

    .line 258
    sget p1, Lcom/qianhe/yct/R$drawable;->icon_bc_mode4_sensor:I

    goto :goto_3

    :cond_6
    sget p1, Lcom/qianhe/yct/R$drawable;->icon_bc_sensor:I

    .line 259
    :goto_3
    sget v0, Lcom/qianhe/yct/R$drawable;->icon_bc_no_sensor:I

    goto :goto_7

    :cond_7
    if-eqz v0, :cond_8

    .line 246
    sget p1, Lcom/qianhe/yct/R$drawable;->icon_ad_mode4_sensor:I

    goto :goto_4

    :cond_8
    sget p1, Lcom/qianhe/yct/R$drawable;->icon_ad_sensor:I

    .line 247
    :goto_4
    sget v0, Lcom/qianhe/yct/R$drawable;->icon_ad_no_sensor:I

    goto :goto_7

    :cond_9
    if-eqz v0, :cond_a

    .line 242
    sget p1, Lcom/qianhe/yct/R$drawable;->icon_dx_mode4_sensor:I

    goto :goto_5

    :cond_a
    sget p1, Lcom/qianhe/yct/R$drawable;->icon_dx_sensor:I

    .line 243
    :goto_5
    sget v0, Lcom/qianhe/yct/R$drawable;->icon_dx_no_sensor:I

    goto :goto_7

    :cond_b
    if-eqz v0, :cond_c

    .line 238
    sget p1, Lcom/qianhe/yct/R$drawable;->icon_ax_mode4_sensor:I

    goto :goto_6

    :cond_c
    sget p1, Lcom/qianhe/yct/R$drawable;->icon_ax_sensor:I

    .line 239
    :goto_6
    sget v0, Lcom/qianhe/yct/R$drawable;->icon_ax_no_sensor:I

    .line 264
    :goto_7
    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget v1, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->mode:I

    sget-object v2, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->SENSOR:Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;

    invoke-virtual {v2}, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->getMode()I

    move-result v2

    if-ne v1, v2, :cond_d

    .line 265
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep4Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep4Binding;->ivStep4:Lpl/droidsonroids/gif/GifImageView;

    invoke-virtual {p0, v0, p1}, Lcom/qianhe/yct/base/BaseProjectFragment;->setGifResource(Landroid/widget/ImageView;I)V

    return-void

    .line 266
    :cond_d
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget p1, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->mode:I

    sget-object v1, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->NO_SENSOR_NOT_FLAT:Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;

    invoke-virtual {v1}, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->getMode()I

    move-result v1

    if-ne p1, v1, :cond_e

    .line 267
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep4Binding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentExcavatorStep4Binding;->ivStep4:Lpl/droidsonroids/gif/GifImageView;

    invoke-virtual {p0, p1, v0}, Lcom/qianhe/yct/base/BaseProjectFragment;->setGifResource(Landroid/widget/ImageView;I)V

    :cond_e
    :goto_8
    return-void
.end method

.method private updateTvDoubtVisibility(Z)V
    .locals 3

    .line 205
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget v0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->mode:I

    sget-object v1, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->NO_SENSOR_FLAT:Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;

    invoke-virtual {v1}, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->getMode()I

    move-result v1

    const/16 v2, 0x8

    if-ne v0, v1, :cond_0

    .line 206
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep4Binding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentExcavatorStep4Binding;->tvDoubt:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep4Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep4Binding;->tvDoubt:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz p1, :cond_1

    const/4 v2, 0x0

    :cond_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public gga(Lcom/qianhe/baselib/bean/GGAEntity;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 454
    iget-object v0, p1, Lcom/qianhe/baselib/bean/GGAEntity;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne v0, v1, :cond_0

    .line 455
    iput-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->mGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    :cond_0
    return-void
.end method

.method public insNavi(Lcom/qianhe/baselib/bean/InsNavi;Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 465
    iget-object p2, p1, Lcom/qianhe/baselib/bean/InsNavi;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v0, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne p2, v0, :cond_0

    .line 466
    iput-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .line 63
    const-string p1, ","

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-static {p2}, Lcom/qianhe/yct/databinding/FragmentExcavatorStep4Binding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/FragmentExcavatorStep4Binding;

    move-result-object p2

    iput-object p2, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep4Binding;

    .line 64
    iget-object p2, p0, Lcom/qianhe/yct/base/BaseProjectFragment;->mSp:Landroid/content/SharedPreferences;

    const-string p3, "current_coords"

    const-string v0, ""

    invoke-interface {p2, p3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 65
    iget-object p3, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p3, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 66
    new-instance p3, Lcom/qianhe/baselib/bean/InsNavi;

    invoke-direct {p3}, Lcom/qianhe/baselib/bean/InsNavi;-><init>()V

    iput-object p3, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    .line 68
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p3, Lcom/qianhe/baselib/bean/InsNavi;->longitude:D

    .line 69
    iget-object p3, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p3, Lcom/qianhe/baselib/bean/InsNavi;->latitude:D

    .line 70
    iget-object p3, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

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

    .line 74
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->resolveInitExcavatorEntity()Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->initEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    .line 75
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->resolveExcavatorEntity()Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    .line 76
    iget-object p2, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep4Binding;

    iget-object p2, p2, Lcom/qianhe/yct/databinding/FragmentExcavatorStep4Binding;->tvContinue:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    iget-wide v2, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->localId:J

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_1
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 77
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->initView()V

    .line 78
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep4Binding;

    invoke-virtual {p1}, Lcom/qianhe/yct/databinding/FragmentExcavatorStep4Binding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 479
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep4Binding;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep4Binding;->ivStep4:Lpl/droidsonroids/gif/GifImageView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/qianhe/yct/base/BaseProjectFragment;->recycleGif(Landroid/widget/ImageView;)V

    .line 480
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->onDestroyView()V

    return-void
.end method

.method public onMessageEvent(Lcom/qianhe/yct/event/CreateExcavatorResponse;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 437
    iget-boolean p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->request:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 438
    iput-boolean p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->request:Z

    .line 439
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->showVerifyAccuracy()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 472
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep4Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorStep4Binding;->ivStep4:Lpl/droidsonroids/gif/GifImageView;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/qianhe/yct/base/BaseProjectFragment;->setGifPlaying(Landroid/widget/ImageView;Z)V

    .line 473
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 474
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onResume()V
    .locals 6

    .line 83
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 84
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 85
    invoke-direct {p0, v0}, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->updateTvDoubtVisibility(Z)V

    .line 86
    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep4Binding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentExcavatorStep4Binding;->unitDropdownSensor:Lcom/qianhe/yct/view/UnitDropdownView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/qianhe/yct/view/UnitDropdownView;->initUnit(Landroid/content/Context;I)V

    .line 87
    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep4Binding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentExcavatorStep4Binding;->tvUnitValue:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/qianhe/yct/base/BaseProjectFragment;->refreshMode1UnitLabel(Landroid/widget/TextView;)V

    .line 88
    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-boolean v1, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->distanceBucketMeasure:Z

    .line 89
    iget-object v2, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep4Binding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/FragmentExcavatorStep4Binding;->lltDx:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 v4, 0x4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    if-eqz v1, :cond_1

    .line 91
    iget-object v2, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    const-wide/16 v4, 0x0

    iput-wide v4, v2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->Dx:D

    .line 93
    :cond_1
    iget-object v2, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget v2, v2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->mode:I

    sget-object v4, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->SENSOR:Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;

    invoke-virtual {v4}, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->getMode()I

    move-result v4

    if-ne v2, v4, :cond_3

    .line 94
    iget-object v2, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep4Binding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/FragmentExcavatorStep4Binding;->ivStep4:Lpl/droidsonroids/gif/GifImageView;

    if-eqz v1, :cond_2

    sget v1, Lcom/qianhe/yct/R$drawable;->icon_ax_mode4_sensor:I

    goto :goto_1

    :cond_2
    sget v1, Lcom/qianhe/yct/R$drawable;->icon_ax_sensor:I

    :goto_1
    invoke-virtual {p0, v2, v1}, Lcom/qianhe/yct/base/BaseProjectFragment;->setGifResource(Landroid/widget/ImageView;I)V

    goto :goto_2

    .line 95
    :cond_3
    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget v1, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->mode:I

    sget-object v2, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->NO_SENSOR_FLAT:Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;

    invoke-virtual {v2}, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->getMode()I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 96
    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep4Binding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentExcavatorStep4Binding;->ivStep4:Lpl/droidsonroids/gif/GifImageView;

    sget v2, Lcom/qianhe/yct/R$drawable;->icon_excavator_rl:I

    invoke-virtual {p0, v1, v2}, Lcom/qianhe/yct/base/BaseProjectFragment;->setGifResource(Landroid/widget/ImageView;I)V

    goto :goto_2

    .line 97
    :cond_4
    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget v1, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->mode:I

    sget-object v2, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->NO_SENSOR_NOT_FLAT:Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;

    invoke-virtual {v2}, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->getMode()I

    move-result v2

    if-ne v1, v2, :cond_5

    .line 98
    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep4Binding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentExcavatorStep4Binding;->ivStep4:Lpl/droidsonroids/gif/GifImageView;

    sget v2, Lcom/qianhe/yct/R$drawable;->icon_ax_no_sensor:I

    invoke-virtual {p0, v1, v2}, Lcom/qianhe/yct/base/BaseProjectFragment;->setGifResource(Landroid/widget/ImageView;I)V

    .line 100
    :cond_5
    :goto_2
    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep4Binding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentExcavatorStep4Binding;->lltMode23:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget v2, v2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->mode:I

    sget-object v4, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->NO_SENSOR_FLAT:Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;

    invoke-virtual {v4}, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->getMode()I

    move-result v4

    const/16 v5, 0x8

    if-ne v2, v4, :cond_6

    const/16 v2, 0x8

    goto :goto_3

    :cond_6
    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 101
    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep4Binding;

    iget-object v2, v1, Lcom/qianhe/yct/databinding/FragmentExcavatorStep4Binding;->lltMode1:Landroid/widget/LinearLayout;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentExcavatorStep4Binding;->lltMode23:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_7

    const/16 v3, 0x8

    :cond_7
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 102
    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorStep4Binding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentExcavatorStep4Binding;->ivStep4:Lpl/droidsonroids/gif/GifImageView;

    invoke-virtual {p0, v1, v0}, Lcom/qianhe/yct/base/BaseProjectFragment;->setGifPlaying(Landroid/widget/ImageView;Z)V

    return-void
.end method
