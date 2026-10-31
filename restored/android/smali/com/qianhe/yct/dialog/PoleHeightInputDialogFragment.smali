.class public Lcom/qianhe/yct/dialog/PoleHeightInputDialogFragment;
.super Lcom/qianhe/yct/base/BaseDialogFragment;
.source "PoleHeightInputDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qianhe/yct/dialog/PoleHeightInputDialogFragment$OnPoleHeightConfirmListener;
    }
.end annotation


# instance fields
.field private binding:Lcom/qianhe/yct/databinding/DialogPoleHeightInputBinding;

.field private listener:Lcom/qianhe/yct/dialog/PoleHeightInputDialogFragment$OnPoleHeightConfirmListener;

.field private unitType:I


# direct methods
.method public static synthetic $r8$lambda$-6gXWeIZLVhS_s4mFSbzktlwWAQ(Lcom/qianhe/yct/dialog/PoleHeightInputDialogFragment;Landroid/view/View;)V
    .locals 0

    .line 68
    iget-object p1, p0, Lcom/qianhe/yct/dialog/PoleHeightInputDialogFragment;->listener:Lcom/qianhe/yct/dialog/PoleHeightInputDialogFragment$OnPoleHeightConfirmListener;

    if-eqz p1, :cond_0

    .line 68
    invoke-interface {p1}, Lcom/qianhe/yct/dialog/PoleHeightInputDialogFragment$OnPoleHeightConfirmListener;->onCancel()V

    .line 69
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method

.method public static synthetic $r8$lambda$DdQ74VTDVgRJh4ykvnOU2HdQNis(Lcom/qianhe/yct/dialog/PoleHeightInputDialogFragment;Landroid/view/View;)V
    .locals 2

    .line 72
    iget p1, p0, Lcom/qianhe/yct/dialog/PoleHeightInputDialogFragment;->unitType:I

    .line 72
    iget-object v0, p0, Lcom/qianhe/yct/dialog/PoleHeightInputDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogPoleHeightInputBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogPoleHeightInputBinding;->edtPoleHeight:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/qianhe/baselib/utils/UnitConvertUtils;->toMeter(ID)D

    move-result-wide v0

    double-to-float p1, v0

    .line 73
    invoke-static {}, Lcom/qianhe/yct/manage/AppConfigManager;->getInstance()Lcom/qianhe/yct/manage/AppConfigManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/qianhe/yct/manage/AppConfigManager;->setPoleHeight(F)V

    .line 74
    iget-object v0, p0, Lcom/qianhe/yct/dialog/PoleHeightInputDialogFragment;->listener:Lcom/qianhe/yct/dialog/PoleHeightInputDialogFragment$OnPoleHeightConfirmListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/qianhe/yct/dialog/PoleHeightInputDialogFragment$OnPoleHeightConfirmListener;->onConfirm(F)V

    .line 75
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseDialogFragment;-><init>()V

    return-void
.end method

.method private formatPoleHeightDisplay(F)Ljava/lang/String;
    .locals 5

    .line 95
    iget v0, p0, Lcom/qianhe/yct/dialog/PoleHeightInputDialogFragment;->unitType:I

    float-to-double v1, p1

    const/4 p1, 0x3

    invoke-static {v0, v1, v2, p1}, Lcom/qianhe/baselib/utils/UnitConvertUtils;->fromMeter(IDI)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    .line 97
    const-string p1, "0"

    return-object p1

    .line 99
    :cond_0
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v0

    .line 100
    sget-object v1, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {v0, p1, v1}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 101
    invoke-virtual {p1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "0*$"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\.$"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .line 53
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/yct/databinding/DialogPoleHeightInputBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/DialogPoleHeightInputBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/dialog/PoleHeightInputDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogPoleHeightInputBinding;

    .line 54
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 55
    iget-object v0, p0, Lcom/qianhe/yct/dialog/PoleHeightInputDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogPoleHeightInputBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/DialogPoleHeightInputBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 56
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    const/4 v0, 0x0

    .line 57
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 58
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v1, Lcom/qianhe/yct/R$drawable;->bg_dialog:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 62
    :cond_0
    invoke-static {}, Lcom/qianhe/yct/manage/AppConfigManager;->getInstance()Lcom/qianhe/yct/manage/AppConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/manage/AppConfigManager;->getUnitPreference()I

    move-result v0

    iput v0, p0, Lcom/qianhe/yct/dialog/PoleHeightInputDialogFragment;->unitType:I

    .line 63
    iget-object v1, p0, Lcom/qianhe/yct/dialog/PoleHeightInputDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogPoleHeightInputBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/DialogPoleHeightInputBinding;->tvUnit:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/qianhe/baselib/enums/UnitEnum;->getSymbol(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    invoke-static {}, Lcom/qianhe/yct/manage/AppConfigManager;->getInstance()Lcom/qianhe/yct/manage/AppConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/manage/AppConfigManager;->getPoleHeight()F

    move-result v0

    .line 65
    iget-object v1, p0, Lcom/qianhe/yct/dialog/PoleHeightInputDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogPoleHeightInputBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/DialogPoleHeightInputBinding;->edtPoleHeight:Lcom/qianhe/yct/view/NumericEditText;

    invoke-direct {p0, v0}, Lcom/qianhe/yct/dialog/PoleHeightInputDialogFragment;->formatPoleHeightDisplay(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v0, p0, Lcom/qianhe/yct/dialog/PoleHeightInputDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogPoleHeightInputBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogPoleHeightInputBinding;->tvCancel:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/dialog/PoleHeightInputDialogFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/dialog/PoleHeightInputDialogFragment$$ExternalSyntheticLambda0;-><init>(Lcom/qianhe/yct/dialog/PoleHeightInputDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget-object v0, p0, Lcom/qianhe/yct/dialog/PoleHeightInputDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogPoleHeightInputBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogPoleHeightInputBinding;->tvConfirm:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/dialog/PoleHeightInputDialogFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/dialog/PoleHeightInputDialogFragment$$ExternalSyntheticLambda1;-><init>(Lcom/qianhe/yct/dialog/PoleHeightInputDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseDialogFragment;->mSp:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "zpy_antennaheight"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    .line 79
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/baselib/bean/OrderBean;

    sget-object v2, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    const-string v3, "GET,ANTENNA"

    invoke-direct {v1, v2, v3}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_1
    return-object p1
.end method

.method public onEventMessage(Lcom/qianhe/rtkclientlib/event/AntennaParams;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 87
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/AntennaParams;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne v0, v1, :cond_0

    .line 88
    iget v0, p1, Lcom/qianhe/rtkclientlib/event/AntennaParams;->h:F

    iget v1, p1, Lcom/qianhe/rtkclientlib/event/AntennaParams;->HL1:F

    add-float/2addr v0, v1

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    .line 89
    iget-object v1, p0, Lcom/qianhe/yct/base/BaseDialogFragment;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "zpy_antennaheight"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u5929\u7ebf\u53c2\u6570\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/qianhe/rtkclientlib/event/AntennaParams;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 3

    .line 106
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    .line 107
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 109
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 111
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseDialogFragment;->isPad()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x3f19999a    # 0.6f

    goto :goto_0

    :cond_0
    const v1, 0x3f4ccccd    # 0.8f

    .line 112
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

    .line 113
    invoke-virtual {p0, v0}, Lcom/qianhe/yct/base/BaseDialogFragment;->setWindowsCallback(Landroid/view/Window;)V

    :cond_1
    return-void
.end method

.method public setOnPoleHeightConfirmListener(Lcom/qianhe/yct/dialog/PoleHeightInputDialogFragment$OnPoleHeightConfirmListener;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/qianhe/yct/dialog/PoleHeightInputDialogFragment;->listener:Lcom/qianhe/yct/dialog/PoleHeightInputDialogFragment$OnPoleHeightConfirmListener;

    return-void
.end method
