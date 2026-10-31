.class public Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;
.super Lcom/qianhe/yct/base/BaseActivity;
.source "BluetoothDebugActivity.java"


# instance fields
.field private binding:Lcom/qianhe/yct/databinding/ActivityBluetoothDebugBinding;

.field private final bluetoothStateReceiver:Landroid/content/BroadcastReceiver;

.field private deviceListAdapter:Lcom/qianhe/yct/adapter/DeviceListAdapter;

.field private loadingFragment:Lcom/qianhe/yct/dialog/LoadingFragment;

.field private mBluetoothClient:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

.field private mCurrentDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

.field private mDiffClient:Lcom/qianhe/ntripclientlib/base/DiffClientImpl;

.field private mSp:Landroid/content/SharedPreferences;

.field private tipDialogFragment:Lcom/qianhe/yct/dialog/ToastDialogFragment;


# direct methods
.method static bridge synthetic -$$Nest$fgetbinding(Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;)Lcom/qianhe/yct/databinding/ActivityBluetoothDebugBinding;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBluetoothDebugBinding;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdeviceListAdapter(Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;)Lcom/qianhe/yct/adapter/DeviceListAdapter;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;->deviceListAdapter:Lcom/qianhe/yct/adapter/DeviceListAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetloadingFragment(Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;)Lcom/qianhe/yct/dialog/LoadingFragment;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;->loadingFragment:Lcom/qianhe/yct/dialog/LoadingFragment;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBluetoothClient(Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;)Lcom/qianhe/rtkclientlib/client/BluetoothClient;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;->mBluetoothClient:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettipDialogFragment(Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;)Lcom/qianhe/yct/dialog/ToastDialogFragment;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;->tipDialogFragment:Lcom/qianhe/yct/dialog/ToastDialogFragment;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCurrentDevice(Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;->mCurrentDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    return-void
.end method

.method static bridge synthetic -$$Nest$mconnect(Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;->connect(Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartScan(Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;->startScan()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstopScan(Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;->stopScan()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseActivity;-><init>()V

    .line 258
    new-instance v0, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity$4;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity$4;-><init>(Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;)V

    iput-object v0, p0, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;->bluetoothStateReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private checkPermissions()V
    .locals 10

    .line 118
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    .line 119
    invoke-direct {p0}, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;->initBluetoothClient()V

    return-void

    :cond_0
    const/16 v1, 0x1f

    .line 124
    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-lt v0, v1, :cond_1

    .line 126
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "android.permission.BLUETOOTH_SCAN"

    aput-object v1, v0, v6

    const-string v1, "android.permission.BLUETOOTH_CONNECT"

    aput-object v1, v0, v5

    aput-object v2, v0, v3

    goto :goto_0

    :cond_1
    const/16 v1, 0x1e

    .line 127
    const-string v7, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v8, "android.permission.WRITE_EXTERNAL_STORAGE"

    if-lt v0, v1, :cond_2

    .line 130
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.MANAGE_APP_ALL_FILES_ACCESS_PERMISSION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "package:"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 132
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 135
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 136
    new-array v0, v4, [Ljava/lang/String;

    aput-object v8, v0, v6

    aput-object v7, v0, v5

    aput-object v2, v0, v3

    goto :goto_0

    .line 140
    :cond_2
    new-array v0, v4, [Ljava/lang/String;

    aput-object v2, v0, v6

    aput-object v8, v0, v5

    aput-object v7, v0, v3

    .line 145
    :goto_0
    array-length v1, v0

    :goto_1
    if-ge v6, v1, :cond_4

    aget-object v2, v0, v6

    .line 146
    invoke-static {p0, v2}, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity$$ExternalSyntheticApiModelOutline0;->m(Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_3

    const/16 v1, 0x64

    .line 155
    invoke-static {p0, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_2

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 153
    :cond_4
    invoke-direct {p0}, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;->initBluetoothClient()V

    :goto_2
    return-void
.end method

.method private connect(Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 364
    new-instance v0, Lcom/qianhe/yct/dialog/LoadingFragment;

    invoke-direct {v0}, Lcom/qianhe/yct/dialog/LoadingFragment;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;->loadingFragment:Lcom/qianhe/yct/dialog/LoadingFragment;

    .line 365
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 366
    sget v1, Lcom/qianhe/yct/R$string;->connecting:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "tip"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    iget-object v1, p0, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;->loadingFragment:Lcom/qianhe/yct/dialog/LoadingFragment;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 368
    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;->loadingFragment:Lcom/qianhe/yct/dialog/LoadingFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "LoadingFragment"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 370
    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;->mBluetoothClient:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    iget-object v1, p1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    new-instance v2, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity$6;

    invoke-direct {v2, p0, p1}, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity$6;-><init>(Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;)V

    invoke-virtual {v0, v1, v2}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->connectToDevice(Landroid/bluetooth/BluetoothDevice;Lcom/qianhe/rtkclientlib/client/BluetoothClient$OnConnectionStateChangedListener;)V

    return-void
.end method

.method private initBluetoothClient()V
    .locals 2

    .line 228
    new-instance v0, Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-direct {v0, p0, v1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;-><init>(Landroid/content/Context;Lcom/qianhe/baselib/enums/DeviceType;)V

    iput-object v0, p0, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;->mBluetoothClient:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    .line 229
    new-instance v0, Lcom/qianhe/yct/adapter/DeviceListAdapter;

    invoke-direct {v0, p0, v1}, Lcom/qianhe/yct/adapter/DeviceListAdapter;-><init>(Landroid/content/Context;Lcom/qianhe/baselib/enums/DeviceType;)V

    iput-object v0, p0, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;->deviceListAdapter:Lcom/qianhe/yct/adapter/DeviceListAdapter;

    .line 230
    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBluetoothDebugBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBluetoothDebugBinding;->rcv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 231
    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBluetoothDebugBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBluetoothDebugBinding;->rcv:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;->deviceListAdapter:Lcom/qianhe/yct/adapter/DeviceListAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 232
    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;->deviceListAdapter:Lcom/qianhe/yct/adapter/DeviceListAdapter;

    new-instance v1, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity$3;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity$3;-><init>(Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;)V

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/adapter/DeviceListAdapter;->setOnActionListener(Lcom/qianhe/yct/adapter/DeviceListAdapter$OnActionListener;)V

    .line 245
    invoke-direct {p0}, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;->openBluetooth()V

    return-void
.end method

.method private openBluetooth()V
    .locals 2

    .line 250
    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;->mBluetoothClient:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-virtual {v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->isBluetoothEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;->mBluetoothClient:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->openBluetooth(Landroid/app/Activity;I)V

    return-void

    .line 253
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;->startScan()V

    return-void
.end method

.method private startScan()V
    .locals 2

    .line 299
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    .line 300
    const-string v0, "android.permission.BLUETOOTH_SCAN"

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    sget v0, Lcom/qianhe/yct/R$string;->permission_not_obtained:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 305
    :cond_0
    const-string/jumbo v0, "\u5f00\u59cb\u626b\u63cf......"

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBluetoothDebugBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBluetoothDebugBinding;->btnScan:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 307
    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBluetoothDebugBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBluetoothDebugBinding;->btnScan:Landroid/widget/Button;

    sget v1, Lcom/qianhe/yct/R$string;->scanning1:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBluetoothDebugBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBluetoothDebugBinding;->btnScan:Landroid/widget/Button;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 309
    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;->deviceListAdapter:Lcom/qianhe/yct/adapter/DeviceListAdapter;

    invoke-virtual {v0}, Lcom/qianhe/yct/adapter/DeviceListAdapter;->clear()V

    .line 310
    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;->mBluetoothClient:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    new-instance v1, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity$5;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity$5;-><init>(Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;)V

    invoke-virtual {v0, v1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->startScan(Lcom/qianhe/rtkclientlib/client/BluetoothClient$OnDeviceScanListener;)V

    return-void
.end method

.method private stopScan()V
    .locals 2

    .line 350
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    .line 351
    const-string v0, "android.permission.BLUETOOTH_SCAN"

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 355
    :cond_0
    const-string/jumbo v0, "\u505c\u6b62\u626b\u63cf\u3002"

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 356
    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;->mBluetoothClient:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->stopScan()V

    .line 357
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBluetoothDebugBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBluetoothDebugBinding;->btnScan:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 358
    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBluetoothDebugBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBluetoothDebugBinding;->btnScan:Landroid/widget/Button;

    sget v1, Lcom/qianhe/yct/R$string;->start_scan:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 359
    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBluetoothDebugBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBluetoothDebugBinding;->btnScan:Landroid/widget/Button;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method


# virtual methods
.method protected getGGA(Lcom/qianhe/baselib/bean/GGAEntity;)V
    .locals 0

    .line 0
    return-void
.end method

.method protected getRootView()Landroid/view/View;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBluetoothDebugBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/ActivityBluetoothDebugBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method protected initData()V
    .locals 0

    .line 0
    return-void
.end method

.method protected initTopBar()Landroid/widget/FrameLayout;
    .locals 1

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 287
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, 0x1

    if-ne p1, p3, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 290
    const-string/jumbo p1, "\u7528\u6237\u540c\u610f\u5f00\u542f\u84dd\u7259"

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    return-void

    .line 292
    :cond_0
    const-string/jumbo p1, "\u7528\u6237\u62d2\u7edd\u5f00\u542f\u84dd\u7259"

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SourceLockedOrientationActivity"
        }
    .end annotation

    .line 69
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/yct/databinding/ActivityBluetoothDebugBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/ActivityBluetoothDebugBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBluetoothDebugBinding;

    .line 70
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 72
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 73
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    const-string v0, "debug"

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 75
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/application/YCTApplication;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/application/YCTApplication;->setCurrentDevice(Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;)V

    .line 76
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/application/YCTApplication;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/application/YCTApplication;->setLastDeviceName(Ljava/lang/String;)V

    .line 77
    const-string/jumbo p1, "sp"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;->mSp:Landroid/content/SharedPreferences;

    .line 78
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;->bluetoothStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 80
    invoke-direct {p0}, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;->checkPermissions()V

    .line 81
    new-instance p1, Lcom/qianhe/yct/dialog/ToastDialogFragment;

    invoke-direct {p1}, Lcom/qianhe/yct/dialog/ToastDialogFragment;-><init>()V

    iput-object p1, p0, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;->tipDialogFragment:Lcom/qianhe/yct/dialog/ToastDialogFragment;

    .line 82
    iget-object p1, p0, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBluetoothDebugBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityBluetoothDebugBinding;->btnScan:Landroid/widget/Button;

    new-instance v0, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity$1;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity$1;-><init>(Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iget-object p1, p0, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBluetoothDebugBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityBluetoothDebugBinding;->topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/TitlebarBinding;->ivBack:Landroid/widget/ImageView;

    new-instance v0, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity$2;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity$2;-><init>(Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object p1, p0, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBluetoothDebugBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityBluetoothDebugBinding;->topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/TitlebarBinding;->tvTitle:Landroid/widget/TextView;

    sget v0, Lcom/qianhe/yct/R$string;->equipment_management:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 453
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseActivity;->onDestroy()V

    .line 454
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 455
    invoke-direct {p0}, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;->stopScan()V

    .line 456
    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;->bluetoothStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 458
    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;->mBluetoothClient:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->disconnect()V

    .line 459
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;->mDiffClient:Lcom/qianhe/ntripclientlib/base/DiffClientImpl;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/qianhe/ntripclientlib/base/DiffClientImpl;->disconnect()V

    .line 461
    :cond_1
    sget-object v0, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {p0, v0}, Lcom/qianhe/yct/base/BaseActivity;->reConnect(Lcom/qianhe/baselib/enums/DeviceType;)V

    return-void
.end method

.method public onEventMessage(Lcom/qianhe/baselib/bean/OrderBean;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 438
    iget-object v0, p1, Lcom/qianhe/baselib/bean/OrderBean;->str:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/qianhe/baselib/bean/OrderBean;->array:[B

    if-nez v0, :cond_0

    return-void

    .line 439
    :cond_0
    iget-object v0, p1, Lcom/qianhe/baselib/bean/OrderBean;->str:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/qianhe/baselib/bean/OrderBean;->str:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lcom/qianhe/baselib/bean/OrderBean;->array:[B

    .line 440
    :goto_0
    iget-object p1, p1, Lcom/qianhe/baselib/bean/OrderBean;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne p1, v1, :cond_2

    .line 441
    invoke-static {}, Lcom/YctDeviceManager;->getInstanceBase()Lcom/qh/yctdevice/YctDevice;

    move-result-object p1

    array-length v1, v0

    invoke-virtual {p1, v0, v1}, Lcom/qh/yctdevice/YctDevice;->sendToDevice([BI)V

    return-void

    .line 442
    :cond_2
    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne p1, v1, :cond_3

    .line 443
    invoke-static {}, Lcom/YctDeviceManager;->getInstanceH5()Lcom/qh/yctdevice/YctDevice;

    move-result-object p1

    array-length v1, v0

    invoke-virtual {p1, v0, v1}, Lcom/qh/yctdevice/YctDevice;->sendToDevice([BI)V

    return-void

    .line 445
    :cond_3
    invoke-static {}, Lcom/YctDeviceManager;->getInstanceBase()Lcom/qh/yctdevice/YctDevice;

    move-result-object p1

    array-length v1, v0

    invoke-virtual {p1, v0, v1}, Lcom/qh/yctdevice/YctDevice;->sendToDevice([BI)V

    .line 446
    invoke-static {}, Lcom/YctDeviceManager;->getInstanceH5()Lcom/qh/yctdevice/YctDevice;

    move-result-object p1

    array-length v1, v0

    invoke-virtual {p1, v0, v1}, Lcom/qh/yctdevice/YctDevice;->sendToDevice([BI)V

    return-void
.end method

.method protected onHorizontalAngleRange(Lcom/qianhe/rtkclientlib/event/GETHorizontalAngleRange;)V
    .locals 0

    .line 0
    return-void
.end method

.method protected onINsNavi(Lcom/qianhe/baselib/bean/InsNavi;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    .line 161
    invoke-super {p0, p1, p2, p3}, Lcom/qianhe/yct/base/BaseActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/16 p2, 0x64

    if-ne p1, p2, :cond_2

    .line 164
    array-length p1, p3

    const/4 p2, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    aget v1, p3, v0

    if-eqz v1, :cond_0

    .line 174
    const-string/jumbo p1, "\u7528\u6237\u62d2\u7edd\u6743\u9650\u7533\u8bf7\u3002"

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 175
    sget p1, Lcom/qianhe/yct/R$string;->permission_denied:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 171
    :cond_1
    invoke-direct {p0}, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;->initBluetoothClient()V

    :cond_2
    return-void
.end method
