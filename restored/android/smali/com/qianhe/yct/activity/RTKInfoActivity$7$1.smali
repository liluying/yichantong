.class Lcom/qianhe/yct/activity/RTKInfoActivity$7$1;
.super Ljava/lang/Object;
.source "RTKInfoActivity.java"

# interfaces
.implements Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/RTKInfoActivity$7;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qianhe/yct/activity/RTKInfoActivity$7;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/RTKInfoActivity$7;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/qianhe/yct/activity/RTKInfoActivity$7$1;->this$1:Lcom/qianhe/yct/activity/RTKInfoActivity$7;

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
    .locals 4

    .line 185
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/baselib/bean/OrderBean;

    iget-object v2, p0, Lcom/qianhe/yct/activity/RTKInfoActivity$7$1;->this$1:Lcom/qianhe/yct/activity/RTKInfoActivity$7;

    iget-object v2, v2, Lcom/qianhe/yct/activity/RTKInfoActivity$7;->this$0:Lcom/qianhe/yct/activity/RTKInfoActivity;

    invoke-static {v2}, Lcom/qianhe/yct/activity/RTKInfoActivity;->-$$Nest$fgetdeviceType(Lcom/qianhe/yct/activity/RTKInfoActivity;)Lcom/qianhe/baselib/enums/DeviceType;

    move-result-object v2

    const-string v3, "SET,RESET,GNSS"

    invoke-direct {v1, v2, v3}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
