.class Lcom/qianhe/yct/activity/LoginedDeviceManageActivity$2$1;
.super Ljava/lang/Object;
.source "LoginedDeviceManageActivity.java"

# interfaces
.implements Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/LoginedDeviceManageActivity$2;->onDel(Lcom/qianhe/yct/bean/LoginedDevice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qianhe/yct/activity/LoginedDeviceManageActivity$2;

.field final synthetic val$device:Lcom/qianhe/yct/bean/LoginedDevice;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/LoginedDeviceManageActivity$2;Lcom/qianhe/yct/bean/LoginedDevice;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 62
    iput-object p1, p0, Lcom/qianhe/yct/activity/LoginedDeviceManageActivity$2$1;->this$1:Lcom/qianhe/yct/activity/LoginedDeviceManageActivity$2;

    iput-object p2, p0, Lcom/qianhe/yct/activity/LoginedDeviceManageActivity$2$1;->val$device:Lcom/qianhe/yct/bean/LoginedDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(Z)V
    .locals 0

    .line 0
    return-void
.end method

.method public onConfirm()V
    .locals 2

    .line 65
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/activity/LoginedDeviceManageActivity$2$1;->val$device:Lcom/qianhe/yct/bean/LoginedDevice;

    iget v1, v1, Lcom/qianhe/yct/bean/LoginedDevice;->id:I

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->logout(I)V

    return-void
.end method
