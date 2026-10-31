.class public Lcom/qianhe/yct/dialog/CheckInsDialogFragment;
.super Lcom/qianhe/yct/base/BaseDialogFragment;
.source "CheckInsDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qianhe/yct/dialog/CheckInsDialogFragment$OnActionListener;
    }
.end annotation


# instance fields
.field private binding:Lcom/qianhe/yct/databinding/DialogCheckInsBinding;

.field private ignoreTiltReject:Z

.field private listener:Lcom/qianhe/yct/dialog/CheckInsDialogFragment$OnActionListener;


# direct methods
.method public static synthetic $r8$lambda$XgLduH8gCDfLxdxw78jjRL5yG1E(Lcom/qianhe/yct/dialog/CheckInsDialogFragment;Landroid/view/View;)V
    .locals 0

    .line 57
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 58
    iget-object p0, p0, Lcom/qianhe/yct/dialog/CheckInsDialogFragment;->listener:Lcom/qianhe/yct/dialog/CheckInsDialogFragment$OnActionListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/qianhe/yct/dialog/CheckInsDialogFragment$OnActionListener;->onClose()V

    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseDialogFragment;-><init>()V

    return-void
.end method

.method private filterInsStatus(I)I
    .locals 1

    .line 82
    invoke-direct {p0}, Lcom/qianhe/yct/dialog/CheckInsDialogFragment;->shouldIgnoreSensorLost()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    sget-object v0, Lcom/qianhe/yct/enums/InsStatusEnum;->SENSORLOST:Lcom/qianhe/yct/enums/InsStatusEnum;

    invoke-virtual {v0}, Lcom/qianhe/yct/enums/InsStatusEnum;->getStatus()I

    move-result v0

    not-int v0, v0

    and-int/2addr p1, v0

    :cond_0
    return p1
.end method

.method private shouldDismissAfterFilter(II)Z
    .locals 2

    .line 95
    invoke-direct {p0}, Lcom/qianhe/yct/dialog/CheckInsDialogFragment;->shouldIgnoreSensorLost()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/qianhe/yct/enums/InsStatusEnum;->SENSORLOST:Lcom/qianhe/yct/enums/InsStatusEnum;

    invoke-virtual {v0}, Lcom/qianhe/yct/enums/InsStatusEnum;->getStatus()I

    move-result v0

    and-int/2addr p1, v0

    if-nez p1, :cond_0

    goto :goto_0

    .line 98
    :cond_0
    sget-object p1, Lcom/qianhe/yct/enums/InsStatusEnum;->GNSSLOST:Lcom/qianhe/yct/enums/InsStatusEnum;

    invoke-virtual {p1}, Lcom/qianhe/yct/enums/InsStatusEnum;->getStatus()I

    move-result p1

    and-int/2addr p1, p2

    if-nez p1, :cond_2

    sget-object p1, Lcom/qianhe/yct/enums/InsStatusEnum;->GNSSREJECT:Lcom/qianhe/yct/enums/InsStatusEnum;

    .line 99
    invoke-virtual {p1}, Lcom/qianhe/yct/enums/InsStatusEnum;->getStatus()I

    move-result p1

    and-int/2addr p1, p2

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/qianhe/yct/dialog/CheckInsDialogFragment;->ignoreTiltReject:Z

    if-nez p1, :cond_1

    sget-object p1, Lcom/qianhe/yct/enums/InsStatusEnum;->TILTREJECT:Lcom/qianhe/yct/enums/InsStatusEnum;

    .line 100
    invoke-virtual {p1}, Lcom/qianhe/yct/enums/InsStatusEnum;->getStatus()I

    move-result p1

    and-int/2addr p1, p2

    if-nez p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method private shouldIgnoreSensorLost()Z
    .locals 1

    .line 89
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/qianhe/yct/base/BaseActivity;

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/base/BaseActivity;

    invoke-virtual {v0}, Lcom/qianhe/yct/base/BaseActivity;->shouldIgnoreBucketSensorLost()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private updateInsStatus(I)V
    .locals 3

    .line 131
    sget v0, Lcom/qianhe/yct/R$string;->ins_low_accuracy_warning2:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 132
    sget-object v1, Lcom/qianhe/yct/enums/InsStatusEnum;->READY:Lcom/qianhe/yct/enums/InsStatusEnum;

    invoke-virtual {v1}, Lcom/qianhe/yct/enums/InsStatusEnum;->getStatus()I

    move-result v1

    and-int/2addr v1, p1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 133
    :goto_0
    sget-object v2, Lcom/qianhe/yct/enums/InsStatusEnum;->GNSSLOST:Lcom/qianhe/yct/enums/InsStatusEnum;

    invoke-virtual {v2}, Lcom/qianhe/yct/enums/InsStatusEnum;->getStatus()I

    move-result v2

    and-int/2addr v2, p1

    if-eqz v2, :cond_1

    .line 134
    sget p1, Lcom/qianhe/yct/R$string;->lost_star:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 135
    :cond_1
    iget-boolean v2, p0, Lcom/qianhe/yct/dialog/CheckInsDialogFragment;->ignoreTiltReject:Z

    if-nez v2, :cond_2

    sget-object v2, Lcom/qianhe/yct/enums/InsStatusEnum;->TILTREJECT:Lcom/qianhe/yct/enums/InsStatusEnum;

    invoke-virtual {v2}, Lcom/qianhe/yct/enums/InsStatusEnum;->getStatus()I

    move-result v2

    and-int/2addr v2, p1

    if-eqz v2, :cond_2

    .line 136
    sget p1, Lcom/qianhe/yct/R$string;->swing:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 137
    :cond_2
    sget-object v2, Lcom/qianhe/yct/enums/InsStatusEnum;->SENSORLOST:Lcom/qianhe/yct/enums/InsStatusEnum;

    invoke-virtual {v2}, Lcom/qianhe/yct/enums/InsStatusEnum;->getStatus()I

    move-result v2

    and-int/2addr v2, p1

    if-eqz v2, :cond_3

    .line 138
    sget p1, Lcom/qianhe/yct/R$string;->sensor_offline:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 139
    sget v0, Lcom/qianhe/yct/R$string;->please_reconnect_sensor:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 140
    :cond_3
    sget-object v2, Lcom/qianhe/yct/enums/InsStatusEnum;->GNSSREJECT:Lcom/qianhe/yct/enums/InsStatusEnum;

    invoke-virtual {v2}, Lcom/qianhe/yct/enums/InsStatusEnum;->getStatus()I

    move-result v2

    and-int/2addr v2, p1

    if-eqz v2, :cond_4

    .line 141
    sget p1, Lcom/qianhe/yct/R$string;->ins_invalid:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 142
    :cond_4
    sget-object v2, Lcom/qianhe/yct/enums/InsStatusEnum;->TILTREJECT:Lcom/qianhe/yct/enums/InsStatusEnum;

    invoke-virtual {v2}, Lcom/qianhe/yct/enums/InsStatusEnum;->getStatus()I

    move-result v2

    and-int/2addr p1, v2

    if-eqz p1, :cond_5

    .line 144
    sget p1, Lcom/qianhe/yct/R$string;->swing:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_5
    if-eqz v1, :cond_6

    .line 146
    sget p1, Lcom/qianhe/yct/R$string;->ins_ok:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 147
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    goto :goto_1

    .line 145
    :cond_6
    const-string p1, ""

    .line 149
    :goto_1
    iget-object v2, p0, Lcom/qianhe/yct/dialog/CheckInsDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogCheckInsBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/DialogCheckInsBinding;->tvInsStatus:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object p1, p0, Lcom/qianhe/yct/dialog/CheckInsDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogCheckInsBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/DialogCheckInsBinding;->tvInsStatus:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v1, :cond_7

    sget v1, Lcom/qianhe/yct/R$color;->text_black:I

    goto :goto_2

    :cond_7
    sget v1, Lcom/qianhe/yct/R$color;->red:I

    :goto_2
    invoke-static {v2, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 151
    iget-object p1, p0, Lcom/qianhe/yct/dialog/CheckInsDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogCheckInsBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/DialogCheckInsBinding;->tvWarning2:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateSolutionStatus(I)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz p1, :cond_5

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    if-eq p1, v1, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/qianhe/yct/R$string;->unknown_solution:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 120
    :cond_1
    sget p1, Lcom/qianhe/yct/R$string;->float_solution:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 117
    :cond_2
    sget p1, Lcom/qianhe/yct/R$string;->fixed_solution:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 114
    :cond_3
    sget p1, Lcom/qianhe/yct/R$string;->diff_solution:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 111
    :cond_4
    sget p1, Lcom/qianhe/yct/R$string;->singlepoint_solution:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 108
    :cond_5
    sget p1, Lcom/qianhe/yct/R$string;->invalid_solution:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 125
    :goto_1
    iget-object v0, p0, Lcom/qianhe/yct/dialog/CheckInsDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogCheckInsBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogCheckInsBinding;->tvSolutionStatus:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object p1, p0, Lcom/qianhe/yct/dialog/CheckInsDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogCheckInsBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/DialogCheckInsBinding;->tvSolutionStatus:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v2, :cond_6

    sget v1, Lcom/qianhe/yct/R$color;->text_black:I

    goto :goto_2

    :cond_6
    sget v1, Lcom/qianhe/yct/R$color;->red:I

    :goto_2
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 46
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 47
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/yct/databinding/DialogCheckInsBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/DialogCheckInsBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/dialog/CheckInsDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogCheckInsBinding;

    .line 48
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 49
    iget-object v0, p0, Lcom/qianhe/yct/dialog/CheckInsDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogCheckInsBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/DialogCheckInsBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 50
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    const/4 v0, 0x0

    .line 51
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 52
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v1, Lcom/qianhe/yct/R$drawable;->bg_dialog:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/dialog/CheckInsDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogCheckInsBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogCheckInsBinding;->tvOk:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/dialog/CheckInsDialogFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/dialog/CheckInsDialogFragment$$ExternalSyntheticLambda0;-><init>(Lcom/qianhe/yct/dialog/CheckInsDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 166
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseDialogFragment;->onDestroyView()V

    .line 167
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onEventMessage(Lcom/qianhe/baselib/bean/GGAEntity;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-eqz p1, :cond_1

    .line 66
    iget-object v0, p1, Lcom/qianhe/baselib/bean/GGAEntity;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 67
    :cond_0
    iget p1, p1, Lcom/qianhe/baselib/bean/GGAEntity;->quality:I

    invoke-direct {p0, p1}, Lcom/qianhe/yct/dialog/CheckInsDialogFragment;->updateSolutionStatus(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/baselib/bean/InsNavi;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-eqz p1, :cond_2

    .line 72
    iget-object v0, p1, Lcom/qianhe/baselib/bean/InsNavi;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    iget v0, p1, Lcom/qianhe/baselib/bean/InsNavi;->insStaus:I

    invoke-direct {p0, v0}, Lcom/qianhe/yct/dialog/CheckInsDialogFragment;->filterInsStatus(I)I

    move-result v0

    .line 74
    invoke-direct {p0, v0}, Lcom/qianhe/yct/dialog/CheckInsDialogFragment;->updateInsStatus(I)V

    .line 76
    sget-object v1, Lcom/qianhe/yct/enums/InsStatusEnum;->READY:Lcom/qianhe/yct/enums/InsStatusEnum;

    invoke-virtual {v1}, Lcom/qianhe/yct/enums/InsStatusEnum;->getStatus()I

    move-result v1

    and-int/2addr v1, v0

    if-nez v1, :cond_1

    iget p1, p1, Lcom/qianhe/baselib/bean/InsNavi;->insStaus:I

    invoke-direct {p0, p1, v0}, Lcom/qianhe/yct/dialog/CheckInsDialogFragment;->shouldDismissAfterFilter(II)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 77
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 3

    .line 156
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    .line 157
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 158
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 159
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseDialogFragment;->isPad()Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x3f000000    # 0.5f

    goto :goto_0

    :cond_0
    const v1, 0x3f4ccccd    # 0.8f

    .line 160
    :goto_0
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

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

    :cond_1
    return-void
.end method

.method public setIgnoreTiltReject(Z)V
    .locals 0

    .line 40
    iput-boolean p1, p0, Lcom/qianhe/yct/dialog/CheckInsDialogFragment;->ignoreTiltReject:Z

    return-void
.end method

.method public setOnActionListener(Lcom/qianhe/yct/dialog/CheckInsDialogFragment$OnActionListener;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/qianhe/yct/dialog/CheckInsDialogFragment;->listener:Lcom/qianhe/yct/dialog/CheckInsDialogFragment$OnActionListener;

    return-void
.end method
