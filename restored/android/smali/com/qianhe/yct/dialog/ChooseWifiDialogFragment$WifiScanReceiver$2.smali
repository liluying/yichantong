.class Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment$WifiScanReceiver$2;
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


# direct methods
.method constructor <init>(Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment$WifiScanReceiver;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment$WifiScanReceiver$2;->this$1:Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment$WifiScanReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 156
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment$WifiScanReceiver$2;->this$1:Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment$WifiScanReceiver;

    iget-object v0, v0, Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment$WifiScanReceiver;->this$0:Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment;

    invoke-static {v0}, Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment;)Lcom/qianhe/yct/databinding/DialogChooseWifiBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogChooseWifiBinding;->tvScan:Landroid/widget/TextView;

    const-string/jumbo v1, "\u626b\u63cf"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment$WifiScanReceiver$2;->this$1:Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment$WifiScanReceiver;

    iget-object v0, v0, Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment$WifiScanReceiver;->this$0:Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment;

    invoke-static {v0}, Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment;->access$100(Lcom/qianhe/yct/dialog/ChooseWifiDialogFragment;)V

    return-void
.end method
