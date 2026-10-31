.class Lcom/qianhe/yct/activity/debug/DebugUpgradefmwActivity$3;
.super Ljava/lang/Object;
.source "DebugUpgradefmwActivity.java"

# interfaces
.implements Landroidx/fragment/app/FragmentResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/debug/DebugUpgradefmwActivity;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/debug/DebugUpgradefmwActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/debug/DebugUpgradefmwActivity;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradefmwActivity$3;->this$0:Lcom/qianhe/yct/activity/debug/DebugUpgradefmwActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFragmentResult(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 134
    const-string v0, "list"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 135
    const-string v1, "debug_upgrade_fmw"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 137
    :try_start_0
    const-string p1, "index"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    .line 139
    iget-object p1, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradefmwActivity$3;->this$0:Lcom/qianhe/yct/activity/debug/DebugUpgradefmwActivity;

    invoke-static {p1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object p1

    sget-object p2, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {p1, p2}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isDeviceConnected(Lcom/qianhe/baselib/enums/DeviceType;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 141
    iget-object p1, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradefmwActivity$3;->this$0:Lcom/qianhe/yct/activity/debug/DebugUpgradefmwActivity;

    invoke-static {p1, p2}, Lcom/qianhe/yct/activity/debug/DebugUpgradefmwActivity;->-$$Nest$mshowDebugUpgradeDialog(Lcom/qianhe/yct/activity/debug/DebugUpgradefmwActivity;Lcom/qianhe/baselib/enums/DeviceType;)V

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    .line 143
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradefmwActivity$3;->this$0:Lcom/qianhe/yct/activity/debug/DebugUpgradefmwActivity;

    sget p2, Lcom/qianhe/yct/R$string;->disconnected_device:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradefmwActivity$3;->this$0:Lcom/qianhe/yct/activity/debug/DebugUpgradefmwActivity;

    sget v1, Lcom/qianhe/yct/R$string;->go_to_connect:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/activity/debug/DebugUpgradefmwActivity$3$1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/debug/DebugUpgradefmwActivity$3$1;-><init>(Lcom/qianhe/yct/activity/debug/DebugUpgradefmwActivity$3;)V

    invoke-virtual {p1, p2, v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    :cond_1
    const/4 p2, 0x1

    if-ne p1, p2, :cond_3

    .line 156
    iget-object p1, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradefmwActivity$3;->this$0:Lcom/qianhe/yct/activity/debug/DebugUpgradefmwActivity;

    invoke-static {p1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object p1

    sget-object p2, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {p1, p2}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isDeviceConnected(Lcom/qianhe/baselib/enums/DeviceType;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 158
    iget-object p1, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradefmwActivity$3;->this$0:Lcom/qianhe/yct/activity/debug/DebugUpgradefmwActivity;

    invoke-static {p1, p2}, Lcom/qianhe/yct/activity/debug/DebugUpgradefmwActivity;->-$$Nest$mshowDebugUpgradeDialog(Lcom/qianhe/yct/activity/debug/DebugUpgradefmwActivity;Lcom/qianhe/baselib/enums/DeviceType;)V

    return-void

    .line 160
    :cond_2
    iget-object p1, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradefmwActivity$3;->this$0:Lcom/qianhe/yct/activity/debug/DebugUpgradefmwActivity;

    sget p2, Lcom/qianhe/yct/R$string;->disconnected_device:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradefmwActivity$3;->this$0:Lcom/qianhe/yct/activity/debug/DebugUpgradefmwActivity;

    sget v1, Lcom/qianhe/yct/R$string;->go_to_connect:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/activity/debug/DebugUpgradefmwActivity$3$2;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/debug/DebugUpgradefmwActivity$3$2;-><init>(Lcom/qianhe/yct/activity/debug/DebugUpgradefmwActivity$3;)V

    invoke-virtual {p1, p2, v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 174
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "\u9009\u62e9\u5dee\u5206\u7c7b\u578b\u5f02\u5e38\uff1a"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    :cond_3
    return-void
.end method
