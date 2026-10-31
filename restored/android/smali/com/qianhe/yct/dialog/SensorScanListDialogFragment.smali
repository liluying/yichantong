.class public Lcom/qianhe/yct/dialog/SensorScanListDialogFragment;
.super Lcom/qianhe/yct/base/BaseDialogFragment;
.source "SensorScanListDialogFragment.java"


# instance fields
.field private adapter:Lcom/qianhe/yct/adapter/SensorScanListAdapter;

.field private binding:Lcom/qianhe/yct/databinding/DialogSensorScanListBinding;

.field private bluetoothClient:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

.field private final mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetadapter(Lcom/qianhe/yct/dialog/SensorScanListDialogFragment;)Lcom/qianhe/yct/adapter/SensorScanListAdapter;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/dialog/SensorScanListDialogFragment;->adapter:Lcom/qianhe/yct/adapter/SensorScanListAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetbinding(Lcom/qianhe/yct/dialog/SensorScanListDialogFragment;)Lcom/qianhe/yct/databinding/DialogSensorScanListBinding;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/dialog/SensorScanListDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogSensorScanListBinding;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetbluetoothClient(Lcom/qianhe/yct/dialog/SensorScanListDialogFragment;)Lcom/qianhe/rtkclientlib/client/BluetoothClient;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/dialog/SensorScanListDialogFragment;->bluetoothClient:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mstartScan(Lcom/qianhe/yct/dialog/SensorScanListDialogFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/dialog/SensorScanListDialogFragment;->startScan()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseDialogFragment;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/dialog/SensorScanListDialogFragment;->mList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/qianhe/yct/dialog/SensorScanListDialogFragment;)Ljava/lang/String;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/qianhe/yct/base/BaseDialogFragment;->requestKey:Ljava/lang/String;

    return-object p0
.end method

.method private startScan()V
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/qianhe/yct/dialog/SensorScanListDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogSensorScanListBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogSensorScanListBinding;->tvScan:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 129
    iget-object v0, p0, Lcom/qianhe/yct/dialog/SensorScanListDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogSensorScanListBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogSensorScanListBinding;->tvScan:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->scanning:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 130
    iget-object v0, p0, Lcom/qianhe/yct/dialog/SensorScanListDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogSensorScanListBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogSensorScanListBinding;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 131
    iget-object v0, p0, Lcom/qianhe/yct/dialog/SensorScanListDialogFragment;->bluetoothClient:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    new-instance v1, Lcom/qianhe/yct/dialog/SensorScanListDialogFragment$4;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/dialog/SensorScanListDialogFragment$4;-><init>(Lcom/qianhe/yct/dialog/SensorScanListDialogFragment;)V

    invoke-virtual {v0, v1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->startScan(Lcom/qianhe/rtkclientlib/client/BluetoothClient$OnDeviceScanListener;)V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .line 55
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/yct/databinding/DialogSensorScanListBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/DialogSensorScanListBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/dialog/SensorScanListDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogSensorScanListBinding;

    .line 56
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 58
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 59
    iget-object v0, p0, Lcom/qianhe/yct/dialog/SensorScanListDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogSensorScanListBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/DialogSensorScanListBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 60
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    const/4 v0, 0x0

    .line 61
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 63
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 64
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    sget v2, Lcom/qianhe/yct/R$drawable;->bg_dialog:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 69
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 71
    iget-object v2, p0, Lcom/qianhe/yct/dialog/SensorScanListDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogSensorScanListBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/DialogSensorScanListBinding;->tvTitle:Landroid/widget/TextView;

    const-string/jumbo v3, "title"

    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    const-string v2, "requestKey"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/qianhe/yct/base/BaseDialogFragment;->requestKey:Ljava/lang/String;

    .line 73
    const-string/jumbo v2, "showDel"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 74
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 77
    iget-object v0, p0, Lcom/qianhe/yct/dialog/SensorScanListDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogSensorScanListBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogSensorScanListBinding;->rcv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 80
    iget-object v0, p0, Lcom/qianhe/yct/dialog/SensorScanListDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogSensorScanListBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogSensorScanListBinding;->rcv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 82
    :cond_2
    :goto_0
    new-instance v0, Lcom/qianhe/yct/adapter/SensorScanListAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/qianhe/yct/dialog/SensorScanListDialogFragment;->mList:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/qianhe/yct/adapter/SensorScanListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/qianhe/yct/dialog/SensorScanListDialogFragment;->adapter:Lcom/qianhe/yct/adapter/SensorScanListAdapter;

    .line 83
    iget-object v1, p0, Lcom/qianhe/yct/dialog/SensorScanListDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogSensorScanListBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/DialogSensorScanListBinding;->rcv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 84
    iget-object v0, p0, Lcom/qianhe/yct/dialog/SensorScanListDialogFragment;->adapter:Lcom/qianhe/yct/adapter/SensorScanListAdapter;

    new-instance v1, Lcom/qianhe/yct/dialog/SensorScanListDialogFragment$1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/dialog/SensorScanListDialogFragment$1;-><init>(Lcom/qianhe/yct/dialog/SensorScanListDialogFragment;)V

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/adapter/SensorScanListAdapter;->setOnActionListener(Lcom/qianhe/yct/adapter/SensorScanListAdapter$OnActionListener;)V

    .line 94
    :cond_3
    iget-object v0, p0, Lcom/qianhe/yct/dialog/SensorScanListDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogSensorScanListBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogSensorScanListBinding;->tvCancel:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/dialog/SensorScanListDialogFragment$2;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/dialog/SensorScanListDialogFragment$2;-><init>(Lcom/qianhe/yct/dialog/SensorScanListDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iget-object v0, p0, Lcom/qianhe/yct/dialog/SensorScanListDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogSensorScanListBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogSensorScanListBinding;->rltScan:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/qianhe/yct/dialog/SensorScanListDialogFragment$3;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/dialog/SensorScanListDialogFragment$3;-><init>(Lcom/qianhe/yct/dialog/SensorScanListDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v0

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->ATTITUDESENSOR:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {v0, v1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getBluetoothClient(Lcom/qianhe/baselib/enums/DeviceType;)Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/dialog/SensorScanListDialogFragment;->bluetoothClient:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    .line 116
    invoke-direct {p0}, Lcom/qianhe/yct/dialog/SensorScanListDialogFragment;->startScan()V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 172
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseDialogFragment;->onDestroyView()V

    .line 173
    iget-object v0, p0, Lcom/qianhe/yct/dialog/SensorScanListDialogFragment;->bluetoothClient:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-virtual {v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->stopScan()V

    .line 174
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onEventMessage(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 122
    const-string v0, "sensor_connected"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 123
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 6

    .line 180
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    .line 181
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 183
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 186
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseDialogFragment;->isPad()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x3f333333    # 0.7f

    goto :goto_0

    :cond_0
    const v1, 0x3f666666    # 0.9f

    .line 187
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    mul-float v2, v2, v1

    float-to-int v1, v2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v2, v2

    const-wide v4, 0x3fe3333333333333L    # 0.6

    mul-double v2, v2, v4

    double-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 188
    invoke-virtual {p0, v0}, Lcom/qianhe/yct/base/BaseDialogFragment;->setWindowsCallback(Landroid/view/Window;)V

    const v1, 0x3e99999a    # 0.3f

    .line 189
    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    .line 191
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/dialog/SensorScanListDialogFragment$5;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/dialog/SensorScanListDialogFragment$5;-><init>(Lcom/qianhe/yct/dialog/SensorScanListDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_2
    return-void
.end method
