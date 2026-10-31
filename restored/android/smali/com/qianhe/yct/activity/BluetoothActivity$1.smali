.class Lcom/qianhe/yct/activity/BluetoothActivity$1;
.super Ljava/lang/Object;
.source "BluetoothActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/BluetoothActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/BluetoothActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/BluetoothActivity;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/qianhe/yct/activity/BluetoothActivity$1;->this$0:Lcom/qianhe/yct/activity/BluetoothActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 143
    iget-object p1, p0, Lcom/qianhe/yct/activity/BluetoothActivity$1;->this$0:Lcom/qianhe/yct/activity/BluetoothActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/BluetoothActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/BluetoothActivity;)Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;->tvScan:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/qianhe/yct/activity/BluetoothActivity$1;->this$0:Lcom/qianhe/yct/activity/BluetoothActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/BluetoothActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/BluetoothActivity;)Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;->tvScan:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 144
    iget-object p1, p0, Lcom/qianhe/yct/activity/BluetoothActivity$1;->this$0:Lcom/qianhe/yct/activity/BluetoothActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/BluetoothActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/BluetoothActivity;)Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;->tvScan:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 145
    iget-object p1, p0, Lcom/qianhe/yct/activity/BluetoothActivity$1;->this$0:Lcom/qianhe/yct/activity/BluetoothActivity;

    sget v1, Lcom/qianhe/yct/R$string;->start_scan:I

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 146
    iget-object p1, p0, Lcom/qianhe/yct/activity/BluetoothActivity$1;->this$0:Lcom/qianhe/yct/activity/BluetoothActivity;

    invoke-virtual {p1}, Lcom/qianhe/yct/activity/BluetoothActivity;->notifyStartScan()V

    return-void

    .line 148
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/activity/BluetoothActivity$1;->this$0:Lcom/qianhe/yct/activity/BluetoothActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/BluetoothActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/BluetoothActivity;)Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;->tvScan:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 149
    iget-object p1, p0, Lcom/qianhe/yct/activity/BluetoothActivity$1;->this$0:Lcom/qianhe/yct/activity/BluetoothActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/BluetoothActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/BluetoothActivity;)Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;->tvScan:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/qianhe/yct/activity/BluetoothActivity$1;->this$0:Lcom/qianhe/yct/activity/BluetoothActivity;

    sget v1, Lcom/qianhe/yct/R$string;->rescan_ble:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object p1, p0, Lcom/qianhe/yct/activity/BluetoothActivity$1;->this$0:Lcom/qianhe/yct/activity/BluetoothActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/BluetoothActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/BluetoothActivity;)Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;->progressBar:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 151
    iget-object p1, p0, Lcom/qianhe/yct/activity/BluetoothActivity$1;->this$0:Lcom/qianhe/yct/activity/BluetoothActivity;

    invoke-virtual {p1}, Lcom/qianhe/yct/activity/BluetoothActivity;->notifyStopScan()V

    return-void
.end method
