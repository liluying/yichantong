.class Lcom/qianhe/yct/fragment/NetWorkConfigFragment$WifiScanReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetWorkConfigFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qianhe/yct/fragment/NetWorkConfigFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiScanReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/NetWorkConfigFragment;

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
.method public constructor <init>(Lcom/qianhe/yct/fragment/NetWorkConfigFragment;Landroid/net/wifi/WifiManager;Ljava/util/ArrayList;)V
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

    .line 367
    iput-object p1, p0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment$WifiScanReceiver;->this$0:Lcom/qianhe/yct/fragment/NetWorkConfigFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 368
    iput-object p2, p0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment$WifiScanReceiver;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 369
    iput-object p3, p0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment$WifiScanReceiver;->wifiList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 374
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 375
    iget-object p2, p0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment$WifiScanReceiver;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p2}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object p2

    .line 376
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

    .line 377
    iget-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 378
    iget-object v1, p0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment$WifiScanReceiver;->wifiList:Ljava/util/ArrayList;

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 381
    :cond_1
    iget-object p2, p0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment$WifiScanReceiver;->this$0:Lcom/qianhe/yct/fragment/NetWorkConfigFragment;

    iget-object v0, p0, Lcom/qianhe/yct/fragment/NetWorkConfigFragment$WifiScanReceiver;->wifiList:Ljava/util/ArrayList;

    invoke-static {p2, v0}, Lcom/qianhe/yct/fragment/NetWorkConfigFragment;->-$$Nest$mshowWifiList(Lcom/qianhe/yct/fragment/NetWorkConfigFragment;Ljava/util/ArrayList;)V

    .line 382
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_2
    return-void
.end method
