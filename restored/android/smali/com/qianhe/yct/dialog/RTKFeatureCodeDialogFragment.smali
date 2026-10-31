.class public Lcom/qianhe/yct/dialog/RTKFeatureCodeDialogFragment;
.super Lcom/qianhe/yct/base/BaseDialogFragment;
.source "RTKFeatureCodeDialogFragment.java"


# instance fields
.field private binding:Lcom/qianhe/yct/databinding/DialogRtkFeatureCodeBinding;

.field private deviceType:Lcom/qianhe/baselib/enums/DeviceType;

.field private isProgrammaticTextChange:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetbinding(Lcom/qianhe/yct/dialog/RTKFeatureCodeDialogFragment;)Lcom/qianhe/yct/databinding/DialogRtkFeatureCodeBinding;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/dialog/RTKFeatureCodeDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogRtkFeatureCodeBinding;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdeviceType(Lcom/qianhe/yct/dialog/RTKFeatureCodeDialogFragment;)Lcom/qianhe/baselib/enums/DeviceType;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/dialog/RTKFeatureCodeDialogFragment;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisProgrammaticTextChange(Lcom/qianhe/yct/dialog/RTKFeatureCodeDialogFragment;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/qianhe/yct/dialog/RTKFeatureCodeDialogFragment;->isProgrammaticTextChange:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$mclose(Lcom/qianhe/yct/dialog/RTKFeatureCodeDialogFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/dialog/RTKFeatureCodeDialogFragment;->close()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseDialogFragment;-><init>()V

    return-void
.end method

.method private close()V
    .locals 0

    .line 103
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 42
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/yct/databinding/DialogRtkFeatureCodeBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/DialogRtkFeatureCodeBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/dialog/RTKFeatureCodeDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogRtkFeatureCodeBinding;

    .line 43
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 44
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 45
    iget-object v0, p0, Lcom/qianhe/yct/dialog/RTKFeatureCodeDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogRtkFeatureCodeBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/DialogRtkFeatureCodeBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 46
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    const/4 v0, 0x0

    .line 47
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 48
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v1, Lcom/qianhe/yct/R$drawable;->bg_dialog:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 49
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 52
    const-string v1, "requestKey"

    const-string v2, "rtkfeaturecode"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/qianhe/yct/base/BaseDialogFragment;->requestKey:Ljava/lang/String;

    .line 53
    const-string v1, "deviceType"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/qianhe/baselib/enums/DeviceType;

    iput-object v1, p0, Lcom/qianhe/yct/dialog/RTKFeatureCodeDialogFragment;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    .line 54
    const-string v1, "featureCode"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 56
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/dialog/RTKFeatureCodeDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogRtkFeatureCodeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogRtkFeatureCodeBinding;->tvConfirm:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/dialog/RTKFeatureCodeDialogFragment$1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/dialog/RTKFeatureCodeDialogFragment$1;-><init>(Lcom/qianhe/yct/dialog/RTKFeatureCodeDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iget-object v0, p0, Lcom/qianhe/yct/dialog/RTKFeatureCodeDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogRtkFeatureCodeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogRtkFeatureCodeBinding;->tvClose:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/dialog/RTKFeatureCodeDialogFragment$2;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/dialog/RTKFeatureCodeDialogFragment$2;-><init>(Lcom/qianhe/yct/dialog/RTKFeatureCodeDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object v0, p0, Lcom/qianhe/yct/dialog/RTKFeatureCodeDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogRtkFeatureCodeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogRtkFeatureCodeBinding;->fltClear:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/qianhe/yct/dialog/RTKFeatureCodeDialogFragment$3;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/dialog/RTKFeatureCodeDialogFragment$3;-><init>(Lcom/qianhe/yct/dialog/RTKFeatureCodeDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object v0, p0, Lcom/qianhe/yct/dialog/RTKFeatureCodeDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogRtkFeatureCodeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogRtkFeatureCodeBinding;->edtCode:Landroidx/appcompat/widget/AppCompatEditText;

    new-instance v1, Lcom/qianhe/yct/dialog/RTKFeatureCodeDialogFragment$4;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/dialog/RTKFeatureCodeDialogFragment$4;-><init>(Lcom/qianhe/yct/dialog/RTKFeatureCodeDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 167
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 168
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onEventMessage(Lcom/qianhe/rtkclientlib/event/GetFeatureCodeEvent;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 115
    iget-object p1, p1, Lcom/qianhe/rtkclientlib/event/GetFeatureCodeEvent;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    return-void
.end method

.method public onEventMessage(Lcom/qianhe/rtkclientlib/event/SetFeatureCodeResult;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 121
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/SetFeatureCodeResult;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    iget-object v1, p0, Lcom/qianhe/yct/dialog/RTKFeatureCodeDialogFragment;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    if-eq v0, v1, :cond_0

    return-void

    .line 122
    :cond_0
    iget-object p1, p1, Lcom/qianhe/rtkclientlib/event/SetFeatureCodeResult;->result:Ljava/lang/String;

    const-string v0, "OK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 124
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/dialog/RTKFeatureCodeDialogFragment;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {p1, v0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getBluetoothClient(Lcom/qianhe/baselib/enums/DeviceType;)Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 126
    invoke-virtual {p1, v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->setExpectReboot(Z)V

    .line 128
    :cond_1
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    const-string v0, "restoreConnectCheck"

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 129
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/qianhe/baselib/bean/OrderBean;

    iget-object v1, p0, Lcom/qianhe/yct/dialog/RTKFeatureCodeDialogFragment;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    const-string v2, "SET,FRESET,CONFIG"

    invoke-direct {v0, v1, v2}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 130
    sget p1, Lcom/qianhe/yct/R$string;->feature_code_set_success_waiting_reboot:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 131
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/qianhe/yct/base/BaseActivity;

    if-eqz v0, :cond_2

    .line 132
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/base/BaseActivity;

    invoke-virtual {v0, p1}, Lcom/qianhe/yct/base/BaseActivity;->showLoadingDialog(Ljava/lang/String;)V

    .line 134
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void

    .line 137
    :cond_3
    iget-object p1, p0, Lcom/qianhe/yct/dialog/RTKFeatureCodeDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogRtkFeatureCodeBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/DialogRtkFeatureCodeBinding;->tvError:Landroid/widget/TextView;

    sget v0, Lcom/qianhe/yct/R$string;->feature_code_set_failed:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object p1, p0, Lcom/qianhe/yct/dialog/RTKFeatureCodeDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogRtkFeatureCodeBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/DialogRtkFeatureCodeBinding;->tvError:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 98
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 99
    iget-object v0, p0, Lcom/qianhe/yct/dialog/RTKFeatureCodeDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogRtkFeatureCodeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogRtkFeatureCodeBinding;->edtCode:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "code"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStart()V
    .locals 3

    .line 143
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    .line 144
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 146
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 149
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseDialogFragment;->isPad()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x3f19999a    # 0.6f

    goto :goto_0

    :cond_0
    const v1, 0x3f666666    # 0.9f

    .line 150
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

    const v1, 0x3e99999a    # 0.3f

    .line 151
    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    .line 152
    invoke-virtual {p0, v0}, Lcom/qianhe/yct/base/BaseDialogFragment;->setWindowsCallback(Landroid/view/Window;)V

    .line 154
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/dialog/RTKFeatureCodeDialogFragment$5;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/dialog/RTKFeatureCodeDialogFragment$5;-><init>(Lcom/qianhe/yct/dialog/RTKFeatureCodeDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_2
    return-void
.end method
