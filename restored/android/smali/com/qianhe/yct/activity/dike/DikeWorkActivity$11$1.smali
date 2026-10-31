.class Lcom/qianhe/yct/activity/dike/DikeWorkActivity$11$1;
.super Ljava/lang/Object;
.source "DikeWorkActivity.java"

# interfaces
.implements Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/dike/DikeWorkActivity$11;->onConfirm()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qianhe/yct/activity/dike/DikeWorkActivity$11;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/dike/DikeWorkActivity$11;)V
    .locals 0

    .line 441
    iput-object p1, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity$11$1;->this$1:Lcom/qianhe/yct/activity/dike/DikeWorkActivity$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 455
    iget-object p1, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity$11$1;->this$1:Lcom/qianhe/yct/activity/dike/DikeWorkActivity$11;

    iget-object p1, p1, Lcom/qianhe/yct/activity/dike/DikeWorkActivity$11;->this$0:Lcom/qianhe/yct/activity/dike/DikeWorkActivity;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity$11$1;->this$1:Lcom/qianhe/yct/activity/dike/DikeWorkActivity$11;

    iget-object v1, v1, Lcom/qianhe/yct/activity/dike/DikeWorkActivity$11;->this$0:Lcom/qianhe/yct/activity/dike/DikeWorkActivity;

    const-class v2, Lcom/qianhe/yct/activity/BluetoothActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onConfirm()V
    .locals 4

    .line 444
    iget-object v0, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity$11$1;->this$1:Lcom/qianhe/yct/activity/dike/DikeWorkActivity$11;

    iget-object v0, v0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity$11;->this$0:Lcom/qianhe/yct/activity/dike/DikeWorkActivity;

    invoke-static {v0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v0

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {v0, v1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isDeviceConnected(Lcom/qianhe/baselib/enums/DeviceType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity$11$1;->this$1:Lcom/qianhe/yct/activity/dike/DikeWorkActivity$11;

    iget-object v0, v0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity$11;->this$0:Lcom/qianhe/yct/activity/dike/DikeWorkActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->-$$Nest$mshowFixedCoordinateStartupDialog(Lcom/qianhe/yct/activity/dike/DikeWorkActivity;)V

    return-void

    .line 447
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity$11$1;->this$1:Lcom/qianhe/yct/activity/dike/DikeWorkActivity$11;

    iget-object v0, v0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity$11;->this$0:Lcom/qianhe/yct/activity/dike/DikeWorkActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity$11$1;->this$1:Lcom/qianhe/yct/activity/dike/DikeWorkActivity$11;

    iget-object v2, v2, Lcom/qianhe/yct/activity/dike/DikeWorkActivity$11;->this$0:Lcom/qianhe/yct/activity/dike/DikeWorkActivity;

    sget v3, Lcom/qianhe/yct/R$string;->base:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity$11$1;->this$1:Lcom/qianhe/yct/activity/dike/DikeWorkActivity$11;

    iget-object v2, v2, Lcom/qianhe/yct/activity/dike/DikeWorkActivity$11;->this$0:Lcom/qianhe/yct/activity/dike/DikeWorkActivity;

    sget v3, Lcom/qianhe/yct/R$string;->not_connected:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 448
    iget-object v0, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity$11$1;->this$1:Lcom/qianhe/yct/activity/dike/DikeWorkActivity$11;

    iget-object v0, v0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity$11;->this$0:Lcom/qianhe/yct/activity/dike/DikeWorkActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity$11$1;->this$1:Lcom/qianhe/yct/activity/dike/DikeWorkActivity$11;

    iget-object v2, v2, Lcom/qianhe/yct/activity/dike/DikeWorkActivity$11;->this$0:Lcom/qianhe/yct/activity/dike/DikeWorkActivity;

    const-class v3, Lcom/qianhe/yct/activity/BluetoothActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
