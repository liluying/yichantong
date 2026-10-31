.class Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity$5$1;
.super Ljava/lang/Object;
.source "BluetoothDebugActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity$5;->onScanFinished()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity$5;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity$5;)V
    .locals 0

    .line 322
    iput-object p1, p0, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity$5$1;->this$1:Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 325
    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity$5$1;->this$1:Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity$5;

    iget-object v0, v0, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity$5;->this$0:Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;)Lcom/qianhe/yct/databinding/ActivityBluetoothDebugBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBluetoothDebugBinding;->btnScan:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 326
    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity$5$1;->this$1:Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity$5;

    iget-object v0, v0, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity$5;->this$0:Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;)Lcom/qianhe/yct/databinding/ActivityBluetoothDebugBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBluetoothDebugBinding;->btnScan:Landroid/widget/Button;

    iget-object v1, p0, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity$5$1;->this$1:Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity$5;

    iget-object v1, v1, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity$5;->this$0:Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;

    sget v2, Lcom/qianhe/yct/R$string;->start_scan:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity$5$1;->this$1:Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity$5;

    iget-object v0, v0, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity$5;->this$0:Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;)Lcom/qianhe/yct/databinding/ActivityBluetoothDebugBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBluetoothDebugBinding;->btnScan:Landroid/widget/Button;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
