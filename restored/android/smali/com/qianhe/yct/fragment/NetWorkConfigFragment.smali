.class public Lcom/qianhe/yct/fragment/NetWorkConfigFragment;
.super Lcom/qianhe/yct/base/BaseFragment;
.source "NetWorkConfigFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qianhe/yct/fragment/NetWorkConfigFragment$WifiScanReceiver;
    }
.end annotation


# instance fields
.field private binding:Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;

.field private chooseWifiDialogFragment:Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment;

.field private final deviceType:Lcom/qianhe/baselib/enums/DeviceType;

.field private getFeatures:Z

.field private getMobileStatus:Z

.field private getWlanStatus:Z

.field private wlan0Entity:Lcom/qianhe/rtkclientlib/event/Wlan0Entity;


# direct methods
.method static bridge synthetic -$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/NetWorkConfigFragment;)Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdeviceType(Lcom/qianhe/yct/fragment/NetWorkConfigFragment;)Lcom/qianhe/baselib/enums/DeviceType;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetRole(Lcom/qianhe/yct/fragment/NetWorkConfigFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/fragment/NetWorkConfigFragment;->getRole(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mshowWifiList(Lcom/qianhe/yct/fragment/NetWorkConfigFragment;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/fragment/NetWorkConfigFragment;->showWifiList(Ljava/util/ArrayList;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateScanWifiVisibility(Lcom/qianhe/yct/fragment/NetWorkConfigFragment;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/fragment/NetWorkConfigFragment;->updateScanWifiVisibility(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseFragment;-><init>()V

    .line 52
    sget-object v0, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    iput-object v0, p0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    return-void
.end method

.method static synthetic access$000(Lcom/qianhe/yct/fragment/NetWorkConfigFragment;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V
    .locals 0

    .line 47
    invoke-virtual {p0, p1, p2, p3}, Lcom/qianhe/yct/base/BaseFragment;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void
.end method

.method static synthetic access$100(Lcom/qianhe/yct/fragment/NetWorkConfigFragment;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V
    .locals 0

    .line 47
    invoke-virtual {p0, p1, p2, p3}, Lcom/qianhe/yct/base/BaseFragment;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void
.end method

.method static synthetic access$200(Lcom/qianhe/yct/fragment/NetWorkConfigFragment;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V
    .locals 0

    .line 47
    invoke-virtual {p0, p1, p2, p3}, Lcom/qianhe/yct/base/BaseFragment;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void
.end method

.method static synthetic access$300(Lcom/qianhe/yct/fragment/NetWorkConfigFragment;Ljava/lang/String;)V
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/base/BaseFragment;->showToastDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/qianhe/yct/fragment/NetWorkConfigFragment;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V
    .locals 0

    .line 47
    invoke-virtual {p0, p1, p2, p3}, Lcom/qianhe/yct/base/BaseFragment;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void
.end method

.method private getRole(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 222
    sget v0, Lcom/qianhe/yct/R$string;->disable:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    sget-object p1, Lcom/qianhe/baselib/enums/WifiRoleEnum;->DISABLE:Lcom/qianhe/baselib/enums/WifiRoleEnum;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 224
    :cond_0
    sget v0, Lcom/qianhe/yct/R$string;->hotspot:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 225
    sget-object p1, Lcom/qianhe/baselib/enums/WifiRoleEnum;->AP:Lcom/qianhe/baselib/enums/WifiRoleEnum;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 226
    :cond_1
    sget v0, Lcom/qianhe/yct/R$string;->client:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 227
    sget-object p1, Lcom/qianhe/baselib/enums/WifiRoleEnum;->STATION:Lcom/qianhe/baselib/enums/WifiRoleEnum;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    :cond_2
    return-object p1
.end method

.method private initData()V
    .locals 4

    .line 104
    iget-object v0, p0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;->tvWifiRole:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v1, Lcom/qianhe/yct/fragment/NetWorkConfigFragment$1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/NetWorkConfigFragment$1;-><init>(Lcom/qianhe/yct/fragment/NetWorkConfigFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v0, p0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;->ivScanWifi:Landroid/widget/ImageView;

    new-instance v1, Lcom/qianhe/yct/fragment/NetWorkConfigFragment$2;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/NetWorkConfigFragment$2;-><init>(Lcom/qianhe/yct/fragment/NetWorkConfigFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object v0, p0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;->tvMobileNet:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v1, Lcom/qianhe/yct/fragment/NetWorkConfigFragment$3;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/NetWorkConfigFragment$3;-><init>(Lcom/qianhe/yct/fragment/NetWorkConfigFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    iget-object v0, p0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;->tvSave:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/NetWorkConfigFragment$4;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/NetWorkConfigFragment$4;-><init>(Lcom/qianhe/yct/fragment/NetWorkConfigFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/qianhe/yct/fragment/NetWorkConfigFragment$5;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/fragment/NetWorkConfigFragment$5;-><init>(Lcom/qianhe/yct/fragment/NetWorkConfigFragment;)V

    const-string v3, "basewifirole"

    invoke-virtual {v0, v3, v1, v2}, Landroidx/fragment/app/FragmentManager;->setFragmentResultListener(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentResultListener;)V

    .line 207
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/qianhe/yct/fragment/NetWorkConfigFragment$6;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/fragment/NetWorkConfigFragment$6;-><init>(Lcom/qianhe/yct/fragment/NetWorkConfigFragment;)V

    const-string/jumbo v3, "wifilist"

    invoke-virtual {v0, v3, v1, v2}, Landroidx/fragment/app/FragmentManager;->setFragmentResultListener(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentResultListener;)V

    return-void
.end method

.method private restoreData(Landroid/os/Bundle;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;->tvWifiRole:Landroidx/appcompat/widget/AppCompatTextView;

    const-string/jumbo v1, "wifiRole"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v0, p0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;->edtWifiName:Landroid/widget/EditText;

    const-string/jumbo v1, "wifiName"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v0, p0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;->edtWifiPassword:Landroid/widget/EditText;

    const-string/jumbo v1, "wifiPassword"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v0, p0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;->tvMobileNet:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, "mobileNet"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v0, p0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;->edtAPNname:Landroid/widget/EditText;

    const-string v1, "APNname"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v0, p0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;->edtAPNuser:Landroid/widget/EditText;

    const-string v1, "APNuser"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v0, p0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;->edtAPNPsw:Landroid/widget/EditText;

    const-string v1, "APNPsw"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v0, p0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;->lltWifiItem:Landroid/widget/LinearLayout;

    const-string/jumbo v1, "wifiItemVisible"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 96
    iget-object v0, p0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;->lltWifiConfig:Landroid/widget/LinearLayout;

    const-string/jumbo v1, "wifiConfigVisible"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 97
    iget-object v0, p0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;->lltMobileItem:Landroid/widget/LinearLayout;

    const-string v1, "mobileItemVisible"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 98
    iget-object v0, p0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;->lltMobileConfig:Landroid/widget/LinearLayout;

    const-string v1, "mobileConfigVisible"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 99
    iget-object p1, p0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;->tvWifiRole:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/qianhe/yct/fragment/NetWorkConfigFragment;->updateScanWifiVisibility(Ljava/lang/String;)V

    return-void
.end method

.method private showWifiList(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 347
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseFragment;->cancelLoadingDialog()V

    .line 348
    iget-object v0, p0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment;->chooseWifiDialogFragment:Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment;->chooseWifiDialogFragment:Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment;

    invoke-virtual {v0, p1}, Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment;->refreshData(Ljava/util/ArrayList;)V

    return-void

    .line 351
    :cond_0
    new-instance v0, Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment;

    invoke-direct {v0}, Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment;->chooseWifiDialogFragment:Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment;

    .line 352
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "ChooseWifiDialogFragment"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 353
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 354
    sget v1, Lcom/qianhe/yct/R$string;->please_choose_wifi:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "title"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    const-string v1, "list"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 356
    iget-object p1, p0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;->edtWifiName:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v1, "currentName"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    const-string p1, "requestKey"

    const-string/jumbo v1, "wifilist"

    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    iget-object p1, p0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment;->chooseWifiDialogFragment:Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-void
.end method

.method private updateScanWifiVisibility(Ljava/lang/String;)V
    .locals 2

    .line 234
    iget-object v0, p0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;->ivScanWifi:Landroid/widget/ImageView;

    sget v1, Lcom/qianhe/yct/R$string;->client:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 58
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;

    .line 59
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 60
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/NetWorkConfigFragment;->initData()V

    if-nez p3, :cond_0

    const/4 p1, 0x1

    .line 62
    iput-boolean p1, p0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment;->getFeatures:Z

    .line 63
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance p2, Lcom/qianhe/baselib/bean/OrderBean;

    iget-object p3, p0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    const-string v0, "GET,FEATURES"

    invoke-direct {p2, p3, v0}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0

    .line 65
    :cond_0
    invoke-direct {p0, p3}, Lcom/qianhe/yct/fragment/NetWorkConfigFragment;->restoreData(Landroid/os/Bundle;)V

    .line 67
    :goto_0
    iget-object p1, p0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;

    invoke-virtual {p1}, Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 389
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseFragment;->onDestroyView()V

    .line 390
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onEventMessage(Lcom/qianhe/rtkclientlib/event/FeaturesEvent;)V
    .locals 6
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 239
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/FeaturesEvent;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne v0, v1, :cond_5

    .line 240
    iget-boolean v0, p0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment;->getFeatures:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    .line 241
    iput-boolean v0, p0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment;->getFeatures:Z

    .line 242
    iget-object v1, p1, Lcom/qianhe/rtkclientlib/event/FeaturesEvent;->value:Ljava/lang/String;

    const-string v2, "WIFI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v3, "MOBILE"

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/qianhe/rtkclientlib/event/FeaturesEvent;->value:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 243
    :cond_0
    sget v1, Lcom/qianhe/yct/R$string;->loading:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/qianhe/yct/base/BaseFragment;->showLoadingDialog(Ljava/lang/String;)V

    .line 245
    :cond_1
    iget-object v1, p0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;->lltWifiItem:Landroid/widget/LinearLayout;

    iget-object v4, p1, Lcom/qianhe/rtkclientlib/event/FeaturesEvent;->value:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    const/16 v5, 0x8

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    const/16 v4, 0x8

    :goto_0
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 246
    iget-object v1, p0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;->lltMobileItem:Landroid/widget/LinearLayout;

    iget-object v4, p1, Lcom/qianhe/rtkclientlib/event/FeaturesEvent;->value:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    const/16 v0, 0x8

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1

    .line 247
    iput-boolean v0, p0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment;->getMobileStatus:Z

    .line 248
    iget-object v1, p1, Lcom/qianhe/rtkclientlib/event/FeaturesEvent;->value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v2, Lcom/qianhe/baselib/bean/OrderBean;

    iget-object v4, p0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    const-string v5, "GET,MOBILE"

    invoke-direct {v2, v4, v5}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 249
    :cond_4
    iput-boolean v0, p0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment;->getWlanStatus:Z

    .line 250
    iget-object p1, p1, Lcom/qianhe/rtkclientlib/event/FeaturesEvent;->value:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/qianhe/baselib/bean/OrderBean;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    const-string v2, "GET,WLAN0"

    invoke-direct {v0, v1, v2}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_5
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/rtkclientlib/event/MobileNetEntity;)V
    .locals 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 299
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseFragment;->cancelLoadingDialog()V

    .line 300
    iget-boolean v0, p0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment;->getMobileStatus:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 301
    iput-boolean v0, p0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment;->getMobileStatus:Z

    .line 302
    iget-object v1, p0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;->tvMobileNet:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v2, p1, Lcom/qianhe/rtkclientlib/event/MobileNetEntity;->state:Ljava/lang/String;

    const-string v3, "ENABLE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget v2, Lcom/qianhe/yct/R$string;->enable:I

    :goto_0
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_0
    sget v2, Lcom/qianhe/yct/R$string;->disable:I

    goto :goto_0

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 303
    iget-object v1, p0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;->lltMobileConfig:Landroid/widget/LinearLayout;

    iget-object v2, p1, Lcom/qianhe/rtkclientlib/event/MobileNetEntity;->state:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    :cond_1
    const/16 v0, 0x8

    :goto_2
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 304
    iget-object v0, p0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;->edtAPNname:Landroid/widget/EditText;

    iget-object v1, p1, Lcom/qianhe/rtkclientlib/event/MobileNetEntity;->apnName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    iget-object v0, p0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;->edtAPNuser:Landroid/widget/EditText;

    iget-object v1, p1, Lcom/qianhe/rtkclientlib/event/MobileNetEntity;->apnUser:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 306
    iget-object v0, p0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;->edtAPNPsw:Landroid/widget/EditText;

    iget-object p1, p1, Lcom/qianhe/rtkclientlib/event/MobileNetEntity;->apnPsw:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/rtkclientlib/event/MobileNetResponse;)V
    .locals 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 312
    iget-object v0, p0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;->tvSave:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/NetWorkConfigFragment$8;

    invoke-direct {v1, p0, p1}, Lcom/qianhe/yct/fragment/NetWorkConfigFragment$8;-><init>(Lcom/qianhe/yct/fragment/NetWorkConfigFragment;Lcom/qianhe/rtkclientlib/event/MobileNetResponse;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onEventMessage(Lcom/qianhe/rtkclientlib/event/Wlan0Entity;)V
    .locals 5
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 257
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseFragment;->cancelLoadingDialog()V

    .line 258
    iget-boolean v0, p0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment;->getWlanStatus:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    .line 259
    iput-boolean v0, p0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment;->getWlanStatus:Z

    .line 260
    iput-object p1, p0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment;->wlan0Entity:Lcom/qianhe/rtkclientlib/event/Wlan0Entity;

    .line 261
    iget-object v1, p1, Lcom/qianhe/rtkclientlib/event/Wlan0Entity;->role:Ljava/lang/String;

    sget-object v2, Lcom/qianhe/baselib/enums/WifiRoleEnum;->DISABLE:Lcom/qianhe/baselib/enums/WifiRoleEnum;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/qianhe/yct/R$string;->disable:I

    :goto_0
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_0
    iget-object v1, p1, Lcom/qianhe/rtkclientlib/event/Wlan0Entity;->role:Ljava/lang/String;

    sget-object v3, Lcom/qianhe/baselib/enums/WifiRoleEnum;->AP:Lcom/qianhe/baselib/enums/WifiRoleEnum;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Lcom/qianhe/yct/R$string;->hotspot:I

    goto :goto_0

    :cond_1
    sget v1, Lcom/qianhe/yct/R$string;->client:I

    goto :goto_0

    .line 262
    :goto_1
    iget-object v3, p0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;

    iget-object v3, v3, Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;->tvWifiRole:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    iget-object v3, p0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;

    iget-object v3, v3, Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;->lltWifiConfig:Landroid/widget/LinearLayout;

    iget-object v4, p1, Lcom/qianhe/rtkclientlib/event/Wlan0Entity;->role:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v0, 0x8

    :cond_2
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 264
    invoke-direct {p0, v1}, Lcom/qianhe/yct/fragment/NetWorkConfigFragment;->updateScanWifiVisibility(Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;->edtWifiName:Landroid/widget/EditText;

    iget-object v1, p1, Lcom/qianhe/rtkclientlib/event/Wlan0Entity;->wifiName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/Wlan0Entity;->wifiPassword:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_3

    .line 267
    iget-object v0, p0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;->edtWifiPassword:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    iget-object v0, p0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;->edtWifiPassword:Landroid/widget/EditText;

    sget v2, Lcom/qianhe/yct/R$string;->no_password_required:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setHint(I)V

    goto :goto_2

    .line 270
    :cond_3
    iget-object v0, p0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;->edtWifiPassword:Landroid/widget/EditText;

    iget-object v2, p1, Lcom/qianhe/rtkclientlib/event/Wlan0Entity;->wifiPassword:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    :goto_2
    iget-object p1, p1, Lcom/qianhe/rtkclientlib/event/Wlan0Entity;->role:Ljava/lang/String;

    sget-object v0, Lcom/qianhe/baselib/enums/WifiRoleEnum;->AP:Lcom/qianhe/baselib/enums/WifiRoleEnum;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 273
    iget-object p1, p0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;->edtWifiName:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/qianhe/yct/base/BaseFragment;->mSp:Landroid/content/SharedPreferences;

    const-string v2, "base_deviceSn"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/rtkclientlib/event/Wlan0Response;)V
    .locals 5
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 280
    iget-object p1, p1, Lcom/qianhe/rtkclientlib/event/Wlan0Response;->result:Ljava/lang/String;

    const-string v0, "OK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 281
    iget-object p1, p0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;->edtAPNname:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 282
    iget-object v0, p0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;->edtAPNuser:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 283
    iget-object v1, p0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;->edtAPNPsw:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 284
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SET,MOBILE,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;

    iget-object v3, v3, Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;->tvMobileNet:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v3}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/qianhe/yct/R$string;->enable:I

    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "ENABLE"

    goto :goto_0

    :cond_0
    const-string v3, "DISABLE"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 286
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/baselib/bean/OrderBean;

    iget-object v2, p0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-direct {v1, v2, p1}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 288
    :cond_1
    iget-object p1, p0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;->edtWifiPassword:Landroid/widget/EditText;

    new-instance v0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment$7;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/fragment/NetWorkConfigFragment$7;-><init>(Lcom/qianhe/yct/fragment/NetWorkConfigFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 72
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 73
    iget-object v0, p0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;->tvWifiRole:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "wifiRole"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;->edtWifiName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "wifiName"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;->edtWifiPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "wifiPassword"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;->tvMobileNet:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mobileNet"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;->edtAPNname:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "APNname"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;->edtAPNuser:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "APNuser"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;->edtAPNPsw:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "APNPsw"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;->lltWifiItem:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const-string/jumbo v1, "wifiItemVisible"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 81
    iget-object v0, p0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;->lltWifiConfig:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const-string/jumbo v1, "wifiConfigVisible"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 82
    iget-object v0, p0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;->lltMobileItem:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const-string v1, "mobileItemVisible"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 83
    iget-object v0, p0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentNetworkConfigBinding;->lltMobileConfig:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const-string v1, "mobileConfigVisible"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public scanWifi()V
    .locals 5

    .line 328
    sget v0, Lcom/qianhe/yct/R$string;->searching_for_wifi:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qianhe/yct/base/BaseFragment;->showLoadingDialog(Ljava/lang/String;)V

    .line 329
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 330
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 331
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-lt v2, v3, :cond_0

    .line 333
    new-instance v2, Lcom/qianhe/yct/fragment/NetWorkConfigFragment$WifiScanReceiver;

    invoke-direct {v2, p0, v1, v0}, Lcom/qianhe/yct/fragment/NetWorkConfigFragment$WifiScanReceiver;-><init>(Lcom/qianhe/yct/fragment/NetWorkConfigFragment;Landroid/net/wifi/WifiManager;Ljava/util/ArrayList;)V

    .line 334
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.net.wifi.SCAN_RESULTS"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 335
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->startScan()Z

    return-void

    .line 338
    :cond_0
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v1

    .line 339
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

    .line 340
    iget-object v3, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v2, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 342
    :cond_2
    invoke-direct {p0, v0}, Lcom/qianhe/yct/fragment/NetWorkConfigFragment;->showWifiList(Ljava/util/ArrayList;)V

    return-void
.end method
