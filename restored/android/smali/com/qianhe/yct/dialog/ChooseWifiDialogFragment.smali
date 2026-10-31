.class public Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment;
.super Lcom/qianhe/yct/base/BaseDialogFragment;
.source "ChooseWifiDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment$WifiScanReceiver;,
        Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment$OnConfirmListener;
    }
.end annotation


# instance fields
.field private adapter:Lcom/qianhe/yct/adapter/ChooseWifiAdapter;

.field private binding:Lcom/qianhe/yct/databinding/DialogChooseWifiBinding;

.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private wifiScanReceiver:Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment$WifiScanReceiver;


# direct methods
.method static bridge synthetic -$$Nest$fgetadapter(Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment;)Lcom/qianhe/yct/adapter/ChooseWifiAdapter;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment;->adapter:Lcom/qianhe/yct/adapter/ChooseWifiAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetbinding(Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment;)Lcom/qianhe/yct/databinding/DialogChooseWifiBinding;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogChooseWifiBinding;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmList(Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment;->mList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetonConfirmListener(Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment;)Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment$OnConfirmListener;
    .locals 0

    .line 0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment;)Ljava/lang/String;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/qianhe/yct/base/BaseDialogFragment;->requestKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment;)V
    .locals 0

    .line 33
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseDialogFragment;->cancelLoadingDialog()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    .line 44
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/yct/databinding/DialogChooseWifiBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/DialogChooseWifiBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogChooseWifiBinding;

    .line 46
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 47
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogChooseWifiBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/DialogChooseWifiBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 48
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    const/4 v0, 0x0

    .line 49
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 51
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v1, Lcom/qianhe/yct/R$drawable;->bg_dialog:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 52
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 54
    iget-object v1, p0, Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogChooseWifiBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/DialogChooseWifiBinding;->tvTitle:Landroid/widget/TextView;

    const-string/jumbo v2, "title"

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    const-string v1, "list"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment;->mList:Ljava/util/ArrayList;

    .line 56
    const-string v1, "currentName"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 60
    iget-object v1, p0, Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogChooseWifiBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/DialogChooseWifiBinding;->rcv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 63
    iget-object v1, p0, Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogChooseWifiBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/DialogChooseWifiBinding;->rcv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 65
    :cond_2
    :goto_0
    new-instance v1, Lcom/qianhe/yct/adapter/ChooseWifiAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment;->mList:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3, v0}, Lcom/qianhe/yct/adapter/ChooseWifiAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment;->adapter:Lcom/qianhe/yct/adapter/ChooseWifiAdapter;

    .line 66
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogChooseWifiBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogChooseWifiBinding;->rcv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 67
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment;->adapter:Lcom/qianhe/yct/adapter/ChooseWifiAdapter;

    new-instance v1, Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment$1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment$1;-><init>(Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment;)V

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/adapter/ChooseWifiAdapter;->setOnActionListener(Lcom/qianhe/yct/adapter/ChooseWifiAdapter$OnActionListener;)V

    .line 79
    :cond_3
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogChooseWifiBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogChooseWifiBinding;->tvScan:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment$2;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment$2;-><init>(Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogChooseWifiBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogChooseWifiBinding;->tvCancel:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment$3;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment$3;-><init>(Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public onStart()V
    .locals 6

    .line 179
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    .line 180
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 182
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 186
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseDialogFragment;->isPad()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x3f4ccccd    # 0.8f

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

    const-wide v4, 0x3fe999999999999aL    # 0.8

    mul-double v2, v2, v4

    double-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 188
    invoke-virtual {p0, v0}, Lcom/qianhe/yct/base/BaseDialogFragment;->setWindowsCallback(Landroid/view/Window;)V

    .line 190
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment$4;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment$4;-><init>(Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_2
    return-void
.end method

.method public refreshData(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment;->mList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment;->mList:Ljava/util/ArrayList;

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 99
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 100
    iget-object p1, p0, Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment;->adapter:Lcom/qianhe/yct/adapter/ChooseWifiAdapter;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment;->mList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/adapter/ChooseWifiAdapter;->refreshData(Ljava/util/ArrayList;)V

    :cond_1
    return-void
.end method

.method public scanWifiList()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 105
    sget v0, Lcom/qianhe/yct/R$string;->searching_for_wifi:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qianhe/yct/base/BaseDialogFragment;->showLoadingDialog(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogChooseWifiBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogChooseWifiBinding;->tvScan:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->scanning:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 108
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 109
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-lt v2, v3, :cond_0

    .line 111
    new-instance v2, Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment$WifiScanReceiver;

    invoke-direct {v2, p0, v1, v0}, Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment$WifiScanReceiver;-><init>(Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment;Landroid/net/wifi/WifiManager;Ljava/util/ArrayList;)V

    iput-object v2, p0, Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment;->wifiScanReceiver:Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment$WifiScanReceiver;

    .line 112
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment;->wifiScanReceiver:Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment$WifiScanReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.net.wifi.SCAN_RESULTS"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 113
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->startScan()Z

    return-object v0

    .line 116
    :cond_0
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v1

    .line 117
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    .line 118
    iget-object v3, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v2, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 120
    :cond_2
    iget-object v1, p0, Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogChooseWifiBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/DialogChooseWifiBinding;->tvScan:Landroid/widget/TextView;

    const-string/jumbo v2, "\u626b\u63cf"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseDialogFragment;->cancelLoadingDialog()V

    return-object v0
.end method
