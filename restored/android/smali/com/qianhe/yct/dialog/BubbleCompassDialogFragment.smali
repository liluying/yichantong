.class public Lcom/qianhe/yct/dialog/BubbleCompassDialogFragment;
.super Lcom/qianhe/yct/base/BaseDialogFragment;
.source "BubbleCompassDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qianhe/yct/dialog/BubbleCompassDialogFragment$OnActionListener;
    }
.end annotation


# instance fields
.field private binding:Lcom/qianhe/yct/databinding/DialogBubbleCompassBinding;

.field private collectClicked:Z

.field private listener:Lcom/qianhe/yct/dialog/BubbleCompassDialogFragment$OnActionListener;

.field private resultDelivered:Z


# direct methods
.method public static synthetic $r8$lambda$64rN6by7CNpaati7FSQY8oyexbQ(Lcom/qianhe/yct/dialog/BubbleCompassDialogFragment;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    .line 73
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 74
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return p2

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$WadUkKrw1C4NyN8r7IADmVE0J3k(Lcom/qianhe/yct/dialog/BubbleCompassDialogFragment;Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    .line 81
    iput-boolean p1, p0, Lcom/qianhe/yct/dialog/BubbleCompassDialogFragment;->collectClicked:Z

    .line 82
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 83
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseDialogFragment;-><init>()V

    return-void
.end method

.method private deliverFragmentResult()V
    .locals 3

    .line 126
    iget-boolean v0, p0, Lcom/qianhe/yct/dialog/BubbleCompassDialogFragment;->resultDelivered:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 129
    iput-boolean v0, p0, Lcom/qianhe/yct/dialog/BubbleCompassDialogFragment;->resultDelivered:Z

    .line 130
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 131
    const-string v1, "collected"

    iget-boolean v2, p0, Lcom/qianhe/yct/dialog/BubbleCompassDialogFragment;->collectClicked:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 132
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "BubbleCompassDialogFragment_result"

    invoke-virtual {v1, v2, v0}, Landroidx/fragment/app/FragmentManager;->setFragmentResult(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private notifyLegacyListener()V
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/qianhe/yct/dialog/BubbleCompassDialogFragment;->listener:Lcom/qianhe/yct/dialog/BubbleCompassDialogFragment$OnActionListener;

    if-nez v0, :cond_0

    return-void

    .line 139
    :cond_0
    iget-boolean v1, p0, Lcom/qianhe/yct/dialog/BubbleCompassDialogFragment;->collectClicked:Z

    if-eqz v1, :cond_1

    .line 140
    invoke-interface {v0}, Lcom/qianhe/yct/dialog/BubbleCompassDialogFragment$OnActionListener;->onCollect()V

    return-void

    .line 142
    :cond_1
    invoke-interface {v0}, Lcom/qianhe/yct/dialog/BubbleCompassDialogFragment$OnActionListener;->onCancel()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    const/4 v0, 0x0

    .line 148
    iput-boolean v0, p0, Lcom/qianhe/yct/dialog/BubbleCompassDialogFragment;->collectClicked:Z

    .line 149
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 61
    const-string v1, "collected"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/qianhe/yct/dialog/BubbleCompassDialogFragment;->collectClicked:Z

    .line 63
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/yct/databinding/DialogBubbleCompassBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/DialogBubbleCompassBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/dialog/BubbleCompassDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogBubbleCompassBinding;

    .line 64
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 65
    iget-object v1, p0, Lcom/qianhe/yct/dialog/BubbleCompassDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogBubbleCompassBinding;

    invoke-virtual {v1}, Lcom/qianhe/yct/databinding/DialogBubbleCompassBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 66
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 67
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    const/4 v0, 0x1

    .line 68
    invoke-virtual {p0, v0}, Landroidx/fragment/app/DialogFragment;->setCancelable(Z)V

    .line 69
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 70
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v1, Lcom/qianhe/yct/R$drawable;->bg_dialog:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 72
    :cond_1
    new-instance v0, Lcom/qianhe/yct/dialog/BubbleCompassDialogFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/dialog/BubbleCompassDialogFragment$$ExternalSyntheticLambda0;-><init>(Lcom/qianhe/yct/dialog/BubbleCompassDialogFragment;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 80
    iget-object v0, p0, Lcom/qianhe/yct/dialog/BubbleCompassDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogBubbleCompassBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogBubbleCompassBinding;->tvCollect:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/dialog/BubbleCompassDialogFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/dialog/BubbleCompassDialogFragment$$ExternalSyntheticLambda1;-><init>(Lcom/qianhe/yct/dialog/BubbleCompassDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 88
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    :cond_2
    return-object p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 154
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 155
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 156
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 158
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/dialog/BubbleCompassDialogFragment;->deliverFragmentResult()V

    .line 159
    invoke-direct {p0}, Lcom/qianhe/yct/dialog/BubbleCompassDialogFragment;->notifyLegacyListener()V

    return-void
.end method

.method public onInsNavi(Lcom/qianhe/baselib/bean/InsNavi;)V
    .locals 5
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-eqz p1, :cond_2

    .line 95
    iget-object v0, p0, Lcom/qianhe/yct/dialog/BubbleCompassDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogBubbleCompassBinding;

    if-nez v0, :cond_0

    goto :goto_0

    .line 96
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v0

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {v0, v1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isDeviceConnected(Lcom/qianhe/baselib/enums/DeviceType;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/qianhe/baselib/bean/InsNavi;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/dialog/BubbleCompassDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogBubbleCompassBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogBubbleCompassBinding;->bubbleCompassView:Lcom/qianhe/yct/view/BubbleCompassView;

    iget-wide v1, p1, Lcom/qianhe/baselib/bean/InsNavi;->rollDegrees:D

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/InsNavi;->pitchDegrees:D

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/qianhe/yct/view/BubbleCompassView;->setAngles(DD)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 121
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 122
    const-string v0, "collected"

    iget-boolean v1, p0, Lcom/qianhe/yct/dialog/BubbleCompassDialogFragment;->collectClicked:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onStart()V
    .locals 3

    .line 105
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    .line 106
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 108
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 110
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseDialogFragment;->isPad()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x3f051eb8    # 0.52f

    goto :goto_0

    :cond_0
    const v1, 0x3f6b851f    # 0.92f

    .line 111
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

    .line 113
    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    .line 114
    invoke-virtual {p0, v0}, Lcom/qianhe/yct/base/BaseDialogFragment;->setWindowsCallback(Landroid/view/Window;)V

    :cond_1
    return-void
.end method

.method public setOnActionListener(Lcom/qianhe/yct/dialog/BubbleCompassDialogFragment$OnActionListener;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/qianhe/yct/dialog/BubbleCompassDialogFragment;->listener:Lcom/qianhe/yct/dialog/BubbleCompassDialogFragment$OnActionListener;

    return-void
.end method
