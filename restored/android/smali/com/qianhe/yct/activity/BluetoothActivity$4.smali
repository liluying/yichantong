.class Lcom/qianhe/yct/activity/BluetoothActivity$4;
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

    .line 185
    iput-object p1, p0, Lcom/qianhe/yct/activity/BluetoothActivity$4;->this$0:Lcom/qianhe/yct/activity/BluetoothActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 188
    iget-object v0, p0, Lcom/qianhe/yct/activity/BluetoothActivity$4;->this$0:Lcom/qianhe/yct/activity/BluetoothActivity;

    sget p1, Lcom/qianhe/yct/R$string;->clear_pairing_list_confirm:I

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/qianhe/yct/activity/BluetoothActivity$4;->this$0:Lcom/qianhe/yct/activity/BluetoothActivity;

    sget v2, Lcom/qianhe/yct/R$string;->confirm:I

    .line 189
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/qianhe/yct/activity/BluetoothActivity$4;->this$0:Lcom/qianhe/yct/activity/BluetoothActivity;

    sget v3, Lcom/qianhe/yct/R$string;->cancel:I

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/qianhe/yct/activity/BluetoothActivity$4$1;

    invoke-direct {v5, p0}, Lcom/qianhe/yct/activity/BluetoothActivity$4$1;-><init>(Lcom/qianhe/yct/activity/BluetoothActivity$4;)V

    .line 188
    const-string v4, ""

    invoke-virtual/range {v0 .. v5}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void
.end method
