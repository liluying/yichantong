.class Lcom/qianhe/yct/activity/RTKInfoActivity$1;
.super Ljava/lang/Object;
.source "RTKInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/RTKInfoActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/RTKInfoActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/RTKInfoActivity;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/qianhe/yct/activity/RTKInfoActivity$1;->this$0:Lcom/qianhe/yct/activity/RTKInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 99
    iget-object p1, p0, Lcom/qianhe/yct/activity/RTKInfoActivity$1;->this$0:Lcom/qianhe/yct/activity/RTKInfoActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/RTKInfoActivity;->-$$Nest$mensureDeviceConnected(Lcom/qianhe/yct/activity/RTKInfoActivity;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 100
    :cond_0
    new-instance p1, Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment;

    invoke-direct {p1}, Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment;-><init>()V

    .line 101
    iget-object v0, p0, Lcom/qianhe/yct/activity/RTKInfoActivity$1;->this$0:Lcom/qianhe/yct/activity/RTKInfoActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "RTKRegisterDialogFragment"

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 102
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 103
    iget-object v1, p0, Lcom/qianhe/yct/activity/RTKInfoActivity$1;->this$0:Lcom/qianhe/yct/activity/RTKInfoActivity;

    invoke-static {v1}, Lcom/qianhe/yct/activity/RTKInfoActivity;->-$$Nest$fgetdeviceType(Lcom/qianhe/yct/activity/RTKInfoActivity;)Lcom/qianhe/baselib/enums/DeviceType;

    move-result-object v1

    const-string v2, "deviceType"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 104
    const-string v1, "requestKey"

    const-string v2, "rtkregister"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-void
.end method
