.class Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment$WifiScanReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ChooseWifiDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiScanReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment;

.field private final wifiList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final wifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment;Landroid/net/wifi/WifiManager;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/WifiManager;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 131
    iput-object p1, p0, Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment$WifiScanReceiver;->this$0:Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 132
    iput-object p2, p0, Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment$WifiScanReceiver;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 133
    iput-object p3, p0, Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment$WifiScanReceiver;->wifiList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 138
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 140
    iget-object p2, p0, Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment$WifiScanReceiver;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p2}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object p2

    .line 141
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 142
    iget-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 143
    iget-object v1, p0, Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment$WifiScanReceiver;->wifiList:Ljava/util/ArrayList;

    iget-object v2, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    iget-object v1, p0, Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment$WifiScanReceiver;->this$0:Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment$WifiScanReceiver$1;

    invoke-direct {v2, p0, v0}, Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment$WifiScanReceiver$1;-><init>(Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment$WifiScanReceiver;Landroid/net/wifi/ScanResult;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 153
    :cond_1
    iget-object p2, p0, Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment$WifiScanReceiver;->this$0:Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    new-instance v0, Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment$WifiScanReceiver$2;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment$WifiScanReceiver$2;-><init>(Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment$WifiScanReceiver;)V

    invoke-virtual {p2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 161
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_2
    return-void
.end method
