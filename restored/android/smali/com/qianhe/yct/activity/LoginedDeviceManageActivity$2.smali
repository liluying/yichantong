.class Lcom/qianhe/yct/activity/LoginedDeviceManageActivity$2;
.super Ljava/lang/Object;
.source "LoginedDeviceManageActivity.java"

# interfaces
.implements Lcom/qianhe/yct/adapter/LoginedDeviceListAdapter$OnActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/LoginedDeviceManageActivity;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/LoginedDeviceManageActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/LoginedDeviceManageActivity;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/qianhe/yct/activity/LoginedDeviceManageActivity$2;->this$0:Lcom/qianhe/yct/activity/LoginedDeviceManageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDel(Lcom/qianhe/yct/bean/LoginedDevice;)V
    .locals 6

    .line 62
    iget-object v0, p0, Lcom/qianhe/yct/activity/LoginedDeviceManageActivity$2;->this$0:Lcom/qianhe/yct/activity/LoginedDeviceManageActivity;

    sget v1, Lcom/qianhe/yct/R$string;->should_the_device_be_taken_offline:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/qianhe/yct/activity/LoginedDeviceManageActivity$2;->this$0:Lcom/qianhe/yct/activity/LoginedDeviceManageActivity;

    sget v3, Lcom/qianhe/yct/R$string;->confirm:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/qianhe/yct/activity/LoginedDeviceManageActivity$2;->this$0:Lcom/qianhe/yct/activity/LoginedDeviceManageActivity;

    sget v4, Lcom/qianhe/yct/R$string;->close:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/qianhe/yct/bean/LoginedDevice;->name:Ljava/lang/String;

    new-instance v5, Lcom/qianhe/yct/activity/LoginedDeviceManageActivity$2$1;

    invoke-direct {v5, p0, p1}, Lcom/qianhe/yct/activity/LoginedDeviceManageActivity$2$1;-><init>(Lcom/qianhe/yct/activity/LoginedDeviceManageActivity$2;Lcom/qianhe/yct/bean/LoginedDevice;)V

    invoke-virtual/range {v0 .. v5}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void
.end method
