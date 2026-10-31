.class Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment$WifiScanReceiver$1;
.super Ljava/lang/Object;
.source "ChooseWifiDialogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment$WifiScanReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment$WifiScanReceiver;

.field final synthetic val$result:Landroid/net/wifi/ScanResult;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment$WifiScanReceiver;Landroid/net/wifi/ScanResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 144
    iput-object p1, p0, Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment$WifiScanReceiver$1;->this$1:Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment$WifiScanReceiver;

    iput-object p2, p0, Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment$WifiScanReceiver$1;->val$result:Landroid/net/wifi/ScanResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment$WifiScanReceiver$1;->this$1:Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment$WifiScanReceiver;

    iget-object v0, v0, Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment$WifiScanReceiver;->this$0:Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment;

    invoke-static {v0}, Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment;->-$$Nest$fgetadapter(Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment;)Lcom/qianhe/yct/adapter/ChooseWifiAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment$WifiScanReceiver$1;->val$result:Landroid/net/wifi/ScanResult;

    iget-object v1, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/adapter/ChooseWifiAdapter;->addData(Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment$WifiScanReceiver$1;->this$1:Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment$WifiScanReceiver;

    iget-object v0, v0, Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment$WifiScanReceiver;->this$0:Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment;

    invoke-static {v0}, Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment;)Lcom/qianhe/yct/databinding/DialogChooseWifiBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogChooseWifiBinding;->rcv:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void
.end method
